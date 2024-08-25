@php
    $categoriesRequest ??= [];
    $categoryId ??= 0;

    if (!isset($groupedCategories)) {
        $groupedCategories = $categories->groupBy('parent_id');
    }

    $currentCategories = $groupedCategories->get($parentId ?? 0);
@endphp

@if($currentCategories)
    <ul class="bb-product-filter-items filter-checkbox" @if(in_array($categoryId, $categoriesRequest)) style="display: block !important;" @endif>
        @foreach ($currentCategories as $category)
            @php
                $hasChildren = $groupedCategories->has($category->id);
            @endphp

            <li class="bb-product-filter-item">
                <input id="attribute-category-{{ $category->id }}" type="checkbox" name="categories[]" value="{{ $category->id }}" @checked(in_array($category->id, $categoriesRequest)) />
                <label for="attribute-category-{{ $category->id }}">{{ $category->name }}</label>

                @if ($hasChildren)
                    <button class="float-end" data-bb-toggle="toggle-product-categories-tree">
                        <x-core::icon name="ti ti-chevron-down" />
                    </button>

                    @include(EcommerceHelper::viewPath('includes.filters.categories-list'), [
                        'groupedCategories' => $groupedCategories,
                        'parentId' => $category->id,
                    ])
                @endif
            </li>
        @endforeach
    </ul>
@endif
