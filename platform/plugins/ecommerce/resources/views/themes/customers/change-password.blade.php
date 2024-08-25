@extends(EcommerceHelper::viewPath('customers.master'))

@section('content')
    <h2 class="customer-page-title mb-4">{{ __('Change password') }}</h2>

    {!! Form::open(['route' => 'customer.post.change-password', 'method' => 'POST']) !!}
        <div class="mb-3">
            <label class="form-label" for="old_password">{{ __('Current password') }}:</label>
            <input
                class="form-control @if ($errors->has('old_password')) is-invalid @endif"
                id="old_password"
                name="old_password"
                type="password"
                placeholder="{{ __('Current Password') }}"
                required
            >
            @if ($errors->has('old_password'))
                <div class="invalid-feedback">
                    {{ $errors->first('old_password') }}
                </div>
            @endif
        </div>
        <div class="mb-3">
            <label class="form-label" for="password">{{ __('New password') }}:</label>
            <input
                class="form-control @if ($errors->has('password')) is-invalid @endif"
                id="password"
                name="password"
                type="password"
                placeholder="{{ __('New Password') }}"
                required
            >
            @if ($errors->has('password'))
                <div class="invalid-feedback">
                    {{ $errors->first('password') }}
                </div>
            @endif
        </div>
        <div class="mb-3">
            <label class="form-label" for="password_confirmation">{{ __('Password confirmation') }}:</label>
            <input
                class="form-control @if ($errors->has('password_confirmation')) is-invalid @endif"
                id="password_confirmation"
                name="password_confirmation"
                type="password"
                placeholder="{{ __('Password Confirmation') }}"
                required
            >
            @if ($errors->has('password_confirmation'))
                <div class="invalid-feedback">
                    {{ $errors->first('password_confirmation') }}
                </div>
            @endif
        </div>

        <button class="{{ $buttonClass ?? 'btn btn-primary' }}">{{ __('Update') }}</button>
    {!! Form::close() !!}
@stop
