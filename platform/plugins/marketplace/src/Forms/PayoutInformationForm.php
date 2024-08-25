<?php

namespace Botble\Marketplace\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Base\Models\BaseModel;
use Botble\Marketplace\Enums\PayoutPaymentMethodsEnum;
use Botble\Marketplace\Forms\Concerns\HasSubmitButton;
use Botble\Marketplace\Http\Requests\PayoutInformationSettingRequest;
use Illuminate\Support\Arr;

class PayoutInformationForm extends FormAbstract
{
    use HasSubmitButton;

    public function setup(): void
    {
        $customer = $this->getModel();
        $payoutMethodsEnabled = PayoutPaymentMethodsEnum::payoutMethodsEnabled();

        $this
            ->setupModel(new BaseModel())
            ->setValidatorClass(PayoutInformationSettingRequest::class)
            ->contentOnly()
            ->add('payout_payment_method', 'select', [
                'label' => __('Payment Method'),
                'selected' => $customer->vendorInfo->payout_payment_method,
                'choices' => Arr::pluck($payoutMethodsEnabled, 'label', 'key'),
                'attr' => [
                    'data-bb-toggle' => 'collapse',
                    'data-bb-target' => '.payout-payment-wrapper',
                ],
            ]);

        foreach ($payoutMethodsEnabled as $method) {
            $hidden = old('payout_payment_method', $customer->vendorInfo->payout_payment_method ?: PayoutPaymentMethodsEnum::BANK_TRANSFER) != $method['key'];

            $this->add("openWrapper_{$method['key']}", 'html', [
                'html' => "<div id='{$method['key']}' data-bb-value='{$method['key']}' class='payout-payment-wrapper'" . ($hidden ? ' style="display: none"' : '') . '>',
            ]);

            foreach ($method['fields'] as $key => $field) {
                $this->add("bank_info[$method[key]][$key]", 'text', [
                    'label' => $field['title'],
                    'value' => old(sprintf('bank_info.%s.%s', $method['key'], $key), Arr::get($customer->bank_info, $key)),
                    'attr' => [
                        'placeholder' => $field['title'],
                    ],
                ]);
            }

            $this->add("closeWrapper_{$method['key']}", 'html', [
                'html' => '</div>',
            ]);
        }

        $this->addSubmitButton(__('Save settings'));
    }
}
