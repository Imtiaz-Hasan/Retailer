<?php

namespace Botble\Marketplace\Http\Requests\Fronts;

use Botble\Marketplace\Http\Requests\StoreRequest;

class VendorStoreRequest extends StoreRequest
{
    public function rules(): array
    {
        $rules = parent::rules();

        unset($rules['customer_id'], $rules['status']);

        return $rules;
    }
}
