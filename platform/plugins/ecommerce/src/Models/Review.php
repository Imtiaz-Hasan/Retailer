<?php

namespace Botble\Ecommerce\Models;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Review extends BaseModel
{
    protected $table = 'ec_reviews';

    protected $fillable = [
        'product_id',
        'customer_id',
        'star',
        'comment',
        'status',
        'images',
    ];

    protected $casts = [
        'status' => BaseStatusEnum::class,
        'images' => 'array',
        'order_created_at' => 'datetime',
    ];

    protected static function booted(): void
    {
        static::creating(function (Review $review) {
            if (! $review->images || ! is_array($review->images) || ! count($review->images)) {
                $review->images = null;
            }
        });

        static::updating(function (Review $review) {
            if (! $review->images || ! is_array($review->images) || ! count($review->images)) {
                $review->images = null;
            }
        });

        static::deleting(fn (Review $review) => $review->reply()->delete());
    }

    public function user(): BelongsTo
    {
        return $this->belongsTo(Customer::class, 'customer_id', 'id')->withDefault();
    }

    public function product(): BelongsTo
    {
        return $this->belongsTo(Product::class)->withDefault();
    }

    public function reply(): HasOne
    {
        return $this->hasOne(ReviewReply::class);
    }

    protected function productName(): Attribute
    {
        return Attribute::get(fn () => $this->product->name);
    }

    protected function userName(): Attribute
    {
        return Attribute::get(fn () => $this->user->name);
    }

    protected function orderCreatedAt(): Attribute
    {
        return Attribute::get(fn () => $this->user->orders()->first()?->created_at);
    }

    protected function isApproved(): Attribute
    {
        return Attribute::get(fn () => $this->status == BaseStatusEnum::PUBLISHED);
    }
}
