<select {{ $attributes->merge(['name' => 'categories[]']) }}>
    <option value="">{{ __('All Categories') }}</option>
    {!! ProductCategoryHelper::renderProductCategoriesSelect() !!}
</select>
