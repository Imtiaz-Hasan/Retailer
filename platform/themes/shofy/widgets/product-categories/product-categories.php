<?php

use Botble\Base\Forms\FieldOptions\HtmlFieldOption;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\Fields\HtmlField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Ecommerce\Models\ProductCategory;
use Botble\Widget\AbstractWidget;
use Botble\Widget\Forms\WidgetForm;
use Illuminate\Support\Collection;

class ProductCategoriesWidget extends AbstractWidget
{
    public function __construct()
    {
        parent::__construct([
            'name' => __('Product Categories'),
            'description' => __('List of product categories'),
            'categories' => [],
        ]);
    }

    protected function data(): array|Collection
    {
        $categoryIds = $this->getConfig('categories');

        if (empty($categoryIds)) {
            return [
                'categories' => collect(),
            ];
        }

        $categories = ProductCategory::query()
            ->wherePublished()
            ->whereIn('id', $categoryIds)
            ->with(['slugable'])
            ->orderByDesc('created_at')
            ->orderBy('order')
            ->get();

        return compact('categories');
    }

    protected function settingForm(): WidgetForm|string|null
    {
        return WidgetForm::createFromArray($config = $this->getConfig())
            ->add(
                'name',
                TextField::class,
                TextFieldOption::make()
                    ->label(__('Name'))
                    ->toArray(),
            )
            ->add(
                'categories',
                HtmlField::class,
                HtmlFieldOption::make()
                    ->content(view('plugins/ecommerce::widgets.partials.select-product-categories', compact('config')))
                    ->toArray()
            );
    }
}
