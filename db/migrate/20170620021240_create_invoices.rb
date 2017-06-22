class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.references :category
      t.integer :role, null: false
      t.string :name, null: false, limit: 255
      t.decimal :amount, null: false, default: 0.0, scale: 2, precision: 10
      t.date :due_date, null: false
      t.boolean :paid, null: false, default: false

      t.timestamps
    end
    add_foreign_key :invoices, :categories, column: :category_id, on_delete: :nullify
  end
end
