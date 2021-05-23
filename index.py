import sys
sys.path.append('C:/Users/gabri/Desktop/FATEC/6/data-engineering-challenge')

from pipelines.person import load_person
from pipelines.customer import load_customer
from pipelines.product import load_product
from pipelines.sales_special_offer_product import load_specialOfferProduct
from pipelines.sales_order_detail import load_salesOrderDetail
from pipelines.sales_order_header import load_salesOrderHeader

def main():
    # load_person()
    load_customer()
    load_product()
    load_specialOfferProduct()
    load_salesOrderDetail()
    load_salesOrderHeader()

if __name__ == "__main__":
    main()