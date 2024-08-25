@extends(EcommerceHelper::viewPath('customers.master'))

@section('content')
    <h2 class="customer-page-title mb-4">{{ __('Add a new address') }}</h2>

    {!! Form::open(['route' => 'customer.address.create']) !!}
        @include('plugins/ecommerce::themes.customers.address.form', ['address' => new Botble\Ecommerce\Models\Address()])
    {!! Form::close() !!}
@endsection
