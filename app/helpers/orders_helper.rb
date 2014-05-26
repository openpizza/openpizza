module OrdersHelper
  def share_url(order)
    root_url[0..-2] + new_order_item_path(order.uuid)
  end

  def qrcode_url(order)
    "openpizza" + root_url[4..-2] + order_path(order.uuid)
  end
end
