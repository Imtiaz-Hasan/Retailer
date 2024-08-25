@extends(EcommerceHelper::viewPath('customers.master'))

@section('content')
    <h2 class="customer-page-title mb-4">{{ __('Address books') }}</h2>

    {!! Form::open(['route' => ['customer.address.edit', $address->id]]) !!}
        @include('plugins/ecommerce::themes.customers.address.form', ['address' => $address])
    {!! Form::close() !!}
@endsection
