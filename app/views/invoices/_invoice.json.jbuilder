json.extract! invoice, :id, :category_id, :role, :name, :amount, :due_date, :paid, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
