<x-core::card class="mb-3">
    <x-core::card.header>
        <x-core::card.title>
            {{ trans('plugins/ecommerce::order.order_information') }}
        </x-core::card.title>
    </x-core::card.header>
    <x-core::card.body>
        <x-core::table :striped="false" :hover="false">
            <x-core::table.body>
                @php
                    $returnRequest->load(['items.product', 'items.orderProduct']);
                @endphp

                @foreach ($returnRequest->items as $returnRequestItem)
                    @php
                        $orderProduct = $returnRequestItem->orderProduct;
                        $product = $orderProduct->product;
                    @endphp

                    <x-core::table.body.row>
                        <x-core::table.body.cell style="width: 80px">
                            <img
                                src="{{ RvMedia::getImageUrl($orderProduct->product_image, 'thumb', false, RvMedia::getDefaultImage()) }}"
                                alt="{{ $orderProduct->product_name }}"
                            >
                        </x-core::table.body.cell>
                        <x-core::table.body.cell>
                            @if ($product->id && $product->original_product->id)
                                <a
                                    href="{{ route($productEditRouteName, $product->original_product->id) }}"
                                    title="{{ $returnRequestItem->product_name }}"
                                    target="_blank"
                                >{{ $returnRequestItem->product_name }}</a>
                            @else
                                <span>{{ $returnRequestItem->product_name }}</span>
                            @endif
                            @if ($orderProduct->options)
                                @if ($sku = Arr::get($orderProduct->options, 'sku'))
                                    <p class="mb-0">
                                        {{ trans('plugins/ecommerce::order.sku') }}:
                                        <strong>{{ $sku }}</strong>
                                    </p>
                                @endif

                                @if ($attributes = Arr::get($orderProduct->options, 'attributes'))
                                    <div>
                                        <small>{{ $attributes }}</small>
                                    </div>
                                @endif
                            @endif
                        </x-core::table.body.cell>
                        <x-core::table.body.cell class="text-end">
                            {{ format_price($returnRequestItem->price_with_tax) }}
                        </x-core::table.body.cell>
                        <x-core::table.body.cell class="text-center">
                            x
                        </x-core::table.body.cell>
                        <x-core::table.body.cell class="text-start text-danger">
                            {{ $returnRequestItem->qty }}
                        </x-core::table.body.cell>
                        <x-core::table.body.cell class="text-end">
                            {{ format_price($returnRequestItem->refund_amount) }}
                        </x-core::table.body.cell>
                    </x-core::table.body.row>
                @endforeach
            </x-core::table.body>
        </x-core::table>

        <div class="offset-md-6">
            <x-core::table :striped="false" :hover="false" class="table-borderless">
                <x-core::table.body>
                    <x-core::table.body.row>
                        <x-core::table.body.cell colspan="3" class="text-end">
                            {{ trans('plugins/ecommerce::order.total_return_amount') }}:
                        </x-core::table.body.cell>
                        <x-core::table.body.cell class="text-end">
                            {{ format_price($returnRequest->items->sum('refund_amount')) }}
                        </x-core::table.body.cell>
                    </x-core::table.body.row>
                    <x-core::table.body.row>
                        <x-core::table.body.cell
                            class="text-end"
                            colspan="3"
                        >
                            {{ trans('plugins/ecommerce::order.status') }}:
                        </x-core::table.body.cell>
                        <x-core::table.body.cell class="text-end">
                            {!! BaseHelper::clean($returnRequest->return_status->toHtml()) !!}
                        </x-core::table.body.cell>
                    </x-core::table.body.row>
                </x-core::table.body>
            </x-core::table>
        </div>
    </x-core::card.body>
</x-core::card>
@if (
    $returnRequest->return_status != Botble\Ecommerce\Enums\OrderReturnStatusEnum::COMPLETED
    || $returnRequest->return_status != Botble\Ecommerce\Enums\OrderReturnStatusEnum::CANCELED
)
    <x-core::card>
        <x-core::card.header>
            <x-core::card.title>
                {{ trans('plugins/ecommerce::order.change_return_order_status') }}
            </x-core::card.title>
        </x-core::card.header>
        <x-core::card.body>
            <x-core::form
                :url="route($orderReturnEditRouteName, $returnRequest->id)"
                method="post"
            >
                <x-core::form.select
                    :label="trans('plugins/ecommerce::order.status')"
                    name="return_status"
                    :options="Botble\Ecommerce\Enums\OrderReturnStatusEnum::labels()"
                    :value="$returnRequest->return_status"
                />
                <div class="text-end">
                    <x-core::button
                        color="primary"
                        class="btn-update-order"
                    >
                        {{ trans('plugins/ecommerce::order.update') }}
                    </x-core::button>
                </div>
            </x-core::form>
        </x-core::card.body>
    </x-core::card>
@endif
