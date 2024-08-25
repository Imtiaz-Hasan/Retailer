<?php

namespace Botble\SalePopup\Http\Controllers\Settings;

use Botble\Base\Facades\PageTitle;
use Botble\SalePopup\Forms\Settings\SalePopupSettingForm;
use Botble\SalePopup\Http\Requests\Settings\SalePopupSettingRequest;
use Botble\SalePopup\Support\SalePopupHelper;
use Botble\Setting\Http\Controllers\SettingController;
use Illuminate\Support\Arr;

class SalePopupSettingController extends SettingController
{
    public function edit()
    {
        PageTitle::setTitle(trans('plugins/ecommerce::setting.sale_popup.name'));

        return SalePopupSettingForm::create()->renderForm();
    }

    public function update(SalePopupSettingRequest $request, SalePopupHelper $salePopupHelper)
    {
        $salePopupHelper->saveSettings(Arr::only($request->validated(), $salePopupHelper->settingKeys()));

        return $this
            ->httpResponse()
            ->withUpdatedSuccessMessage();
    }
}
