<?php

namespace Botble\Ecommerce\Forms\Settings;

use Botble\Base\Forms\Fields\CodeEditorField;
use Botble\Ecommerce\Facades\EcommerceHelper;
use Botble\Ecommerce\Http\Requests\Settings\TrackingSettingRequest;
use Botble\Setting\Forms\SettingForm;

class TrackingSettingForm extends SettingForm
{
    public function setup(): void
    {
        parent::setup();

        $this
            ->setSectionTitle(trans('plugins/ecommerce::setting.tracking.manage_tracking'))
            ->setSectionDescription(trans('plugins/ecommerce::setting.tracking.manage_tracking_description'))
            ->setValidatorClass(TrackingSettingRequest::class)
            ->add('facebook_pixel_enabled', 'onOffCheckbox', [
                'label' => trans('plugins/ecommerce::setting.tracking.form.enable_facebook_pixel'),
                'value' => EcommerceHelper::isFacebookPixelEnabled(),
                'help_block' => [
                    'text' => trans('plugins/ecommerce::setting.tracking.form.facebook_pixel_helper'),
                ],
                'attr' => [
                    'data-bb-toggle' => 'collapse',
                    'data-bb-target' => '.facebook-pixel-settings',
                ],
            ])
            ->add('open_fieldset_facebook_pixel_settings', 'html', [
                'html' => sprintf(
                    '<fieldset class="form-fieldset facebook-pixel-settings" style="display: %s;" data-bb-value="1">',
                    old('facebook_pixel_enabled', EcommerceHelper::isFacebookPixelEnabled()) ? 'block' : 'none'
                ),
            ])
            ->add('facebook_pixel_id', 'text', [
                'label' => trans('plugins/ecommerce::setting.tracking.form.facebook_pixel_id'),
                'value' => get_ecommerce_setting('facebook_pixel_id'),
            ])
            ->add('close_fieldset_facebook_pixel_settings', 'html', [
                'html' => '</fieldset>',
            ])
            ->add('google_tag_manager_enabled', 'onOffCheckbox', [
                'label' => trans('plugins/ecommerce::setting.tracking.form.enable_google_tag_manager'),
                'value' => EcommerceHelper::isGoogleTagManagerEnabled(),
                'wrapper' => [
                    'class' => 'mb-0',
                ],
                'attr' => [
                    'data-setting-container' => '.google-tag-manager-settings-container',
                    'data-bb-toggle' => 'collapse',
                    'data-bb-target' => '.google-tag-manager-settings',
                ],
                'help_block' => [
                    'text' => trans('plugins/ecommerce::setting.tracking.form.google_tag_manager_helper'),
                ],
            ])
            ->add('open_fieldset_google_tag_manager_settings', 'html', [
                'html' => sprintf(
                    '<fieldset class="form-fieldset mt-3 google-tag-manager-settings" style="display: %s;" data-bb-value="1">',
                    old('google_tag_manager_enabled', EcommerceHelper::isGoogleTagManagerEnabled()) ? 'block' : 'none'
                ),
            ])
            ->add('google_tag_manager_code', CodeEditorField::class, [
                'label' => trans('plugins/ecommerce::setting.tracking.form.google_tag_manager_code'),
                'value' => old('google_tag_manager_code', get_ecommerce_setting('google_tag_manager_code')),
                'attr' => [
                    'mode' => 'html',
                ],
            ])
            ->add('close_fieldset_google_tag_manager_settings', 'html', [
                'html' => '</fieldset>',
            ]);
    }
}
