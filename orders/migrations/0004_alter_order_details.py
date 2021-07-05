# Generated by Django 3.2.4 on 2021-06-26 18:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0002_alter_product_options'),
        ('orders', '0003_alter_order_details'),
    ]

    operations = [
        migrations.AlterField(
            model_name='order',
            name='details',
            field=models.ManyToManyField(through='orders.OrderDetails', to='products.Product'),
        ),
    ]
