<?php

namespace Database\Seeders\Themes\Fashion;

use Database\Seeders\Themes\Main\PageSeeder as MainPageSeeder;

class PageSeeder extends MainPageSeeder
{
    protected function getData(): array
    {
        return [
            [
                'name' => 'Home',
                'content' => '[simple-slider style="2" key="home-slider" shape_1="fashion/sliders/shape-1.png" shape_2="fashion/sliders/shape-2.png" shape_3="fashion/sliders/shape-3.png"][/simple-slider]' .
                    '[ads style="2" key_1="WXAUTIJV1QU0" key_2="7Z5RXBBWV7J2" key_3="JY08TDO8FG1E" full_width="1"][/ads]' .
                    '[ecommerce-categories style="slider" title="Popular on the Shofy store." description="Shop by Category" category_ids="1,2,7,11,18,19" background_color="#F3F5F7"][/ecommerce-categories]' .
                    '[ecommerce-product-groups title="Customer Favorite Style Product" subtitle="All Product Shop" limit="8" tabs="all,featured,on-sale,trending,top-rated"][/ecommerce-product-groups]' .
                    '[ecommerce-products title="This Week\'s Featured" subtitle="Shop by Category" by="collection" collection_ids="1" limit="5" style="slider-full-width"][/ecommerce-products]' .
                    '[ecommerce-products title="Trending Arrivals" subtitle="More to Discover" by="collection" collection_ids="1" limit="5" style="slider-with-ads-sidebar" ads="VKJNCBIBQC1O"][/ecommerce-products]' .
                    '[ecommerce-products title="This Week\'s Featured" subtitle="Best Seller This Week\’s" by="specify" product_ids="3,4,5,6" limit="12" style="slider" button_label="Shop All Now" button_url="/products"][/ecommerce-products]' .
                    '[testimonials style="1" title="The Review Are In" testimonial_ids="2,3,4"][/testimonials]' .
                    '[blog-posts title="Latest News & Articles" subtitle="Our Blog & News" type="recent" limit="3" button_label="Discover More" button_url="/blog"][/blog-posts]' .
                    '[site-features style="2" quantity="4" title_1="Free Delivery" description_1="Orders from all item" icon_1="ti ti-truck-delivery" title_2="Return & Refund" description_2="Money back guarantee" icon_2="ti ti-currency-dollar" title_3="Member Discount" description_3="Every order over $140.00" icon_3="ti ti-discount-2" title_4="Support 24/7" description_4="Contact us 24 hours a day" icon_4="ti ti-headset"][/site-features]' .
                    '[gallery style="2" limit="5"][/gallery]',
                'template' => 'full-width',
                'metadata' => [
                    'breadcrumb_style' => 'none',
                ],
            ],
            [
                'name' => 'Product Categories',
                'content' => '[ads style="2" key_1="UROL9F9ZZVAA" key_2="B30VDBKO7SBF"][/ads]' .
                    '[ecommerce-categories style="slider" title="Popular on the Shofy store." description="Shop by Category" category_ids="1,2,7,11,18,19" background_color="#F3F5F7"][/ecommerce-categories]',
                'template' => 'full-width',
                'metadata' => [
                    'breadcrumb_style' => 'align-start',
                ],
            ],
        ];
    }
}
