<?php

namespace Botble\Marketplace\Http\Controllers\Fronts;

use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Facades\Assets;
use Botble\Base\Facades\MetaBox;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Marketplace\Facades\MarketplaceHelper;
use Botble\Marketplace\Forms\PayoutInformationForm;
use Botble\Marketplace\Forms\TaxInformationForm;
use Botble\Marketplace\Forms\VendorStoreForm;
use Botble\Marketplace\Http\Requests\Fronts\VendorStoreRequest;
use Botble\Marketplace\Http\Requests\PayoutInformationSettingRequest;
use Botble\Marketplace\Http\Requests\TaxInformationSettingRequest;
use Botble\Marketplace\Models\Store;
use Botble\Media\Facades\RvMedia;
use Botble\Slug\Facades\SlugHelper;

class SettingController extends BaseController
{
    public function index()
    {
        $this->pageTitle(__('Settings'));

        Assets::addScriptsDirectly('vendor/core/plugins/location/js/location.js');

        $store = auth('customer')->user()->store;

        $form = VendorStoreForm::createFromModel($store)
            ->renderForm();

        $taxInformationForm = TaxInformationForm::createFromModel($store->customer)
            ->setUrl(route('marketplace.vendor.settings.post.tax-info'))
            ->renderForm();

        $payoutInformationForm = PayoutInformationForm::createFromModel($store->customer)
            ->setUrl(route('marketplace.vendor.settings.post.payout'))
            ->renderForm();

        return MarketplaceHelper::view(
            'vendor-dashboard.stores.form',
            compact('store', 'form', 'taxInformationForm', 'payoutInformationForm')
        );
    }

    public function saveSettings(VendorStoreRequest $request)
    {
        $store = auth('customer')->user()->store;

        $storeForm = VendorStoreForm::createFromModel($store);

        $storeForm->saving(function (VendorStoreForm $form) use ($request) {

            $store = $form->getModel();

            $existing = SlugHelper::getSlug($request->input('slug'), SlugHelper::getPrefix(Store::class));

            if ($existing && $existing->reference_id != $store->id) {
                return $this->httpResponse()->setError()->setMessage(__('Shop URL is existing. Please choose another one!'));
            }

            if ($request->hasFile('logo_input')) {
                $result = RvMedia::handleUpload($request->file('logo_input'), 0, $store->upload_folder);
                if (! $result['error']) {
                    $file = $result['data'];
                    $request->merge(['logo' => $file->url]);
                }
            }

            if ($request->hasFile('cover_image_input')) {
                $result = RvMedia::handleUpload($request->file('cover_image_input'), 0, 'stores');
                if (! $result['error']) {
                    MetaBox::saveMetaBoxData($store, 'cover_image', $result['data']->url);
                }
            } elseif ($request->input('cover_image')) {
                MetaBox::saveMetaBoxData($store, 'cover_image', $request->input('cover_image'));
            } elseif ($request->has('cover_image')) {
                MetaBox::deleteMetaData($store, 'cover_image');
            }

            $store->fill($request->input());
            $store->save();

            $request->merge(['is_slug_editable' => 1]);
        });

        return $this
            ->httpResponse()
            ->setNextUrl(route('marketplace.vendor.settings'))
            ->setMessage(__('Update successfully!'));
    }

    public function updateTaxInformation(TaxInformationSettingRequest $request)
    {
        /** @var Store $store */
        $store = auth('customer')->user()->store;

        $customer = $store->customer;

        if ($customer && $customer->getKey()) {
            $customer->vendorInfo->update($request->validated());
        }

        event(new UpdatedContentEvent(STORE_MODULE_SCREEN_NAME, $request, $store));

        return $this->httpResponse()
            ->setMessage(__('Update successfully!'))
            ->setNextUrl(route('marketplace.vendor.settings'));
    }

    public function updatePayoutInformation(PayoutInformationSettingRequest $request)
    {
        /** @var Store $store */
        $store = auth('customer')->user()->store;

        $customer = $store->customer;

        if ($customer && $customer->id) {
            $vendorInfo = $customer->vendorInfo;
            $vendorInfo->payout_payment_method = $request->input('payout_payment_method');
            $vendorInfo->bank_info = $request->input('bank_info', []);
            $vendorInfo->save();
        }

        event(new UpdatedContentEvent(STORE_MODULE_SCREEN_NAME, $request, $store));

        return $this
            ->httpResponse()
            ->setMessage(__('Update successfully!'))
            ->setNextUrl(route('marketplace.vendor.settings'));
    }
}
