class CustomerModel {
  List<Customers>? customers;

  CustomerModel({this.customers});

  CustomerModel.fromJson(Map<String, dynamic> json) {
    if (json['customers'] != null) {
      customers = <Customers>[];
      json['customers'].forEach((v) {
        customers!.add(new Customers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.customers != null) {
      data['customers'] = this.customers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Customers {
  BillingAddress? billingAddress;
  BillingAddress? shippingAddress;
  List<Addresses>? addresses;
  String? customerGuid;
  String? username;
  String? email;
  String? firstName;
  String? lastName;
  int? languageId;
  int? currencyId;
  String? dateOfBirth;
  String? gender;
  Null? adminComment;
  bool? isTaxExempt;
  bool? hasShoppingCartItems;
  bool? active;
  bool? deleted;
  bool? isSystemAccount;
  Null? systemName;
  String? lastIpAddress;
  String? createdOnUtc;
  String? lastLoginDateUtc;
  String? lastActivityDateUtc;
  int? registeredInStoreId;
  bool? subscribedToNewsletter;
  List<Null>? roleIds;
  int? id;

  Customers(
      {this.billingAddress,
        this.shippingAddress,
        this.addresses,
        this.customerGuid,
        this.username,
        this.email,
        this.firstName,
        this.lastName,
        this.languageId,
        this.currencyId,
        this.dateOfBirth,
        this.gender,
        this.adminComment,
        this.isTaxExempt,
        this.hasShoppingCartItems,
        this.active,
        this.deleted,
        this.isSystemAccount,
        this.systemName,
        this.lastIpAddress,
        this.createdOnUtc,
        this.lastLoginDateUtc,
        this.lastActivityDateUtc,
        this.registeredInStoreId,
        this.subscribedToNewsletter,
        this.roleIds,
        this.id});

  Customers.fromJson(Map<String, dynamic> json) {
    billingAddress = json['billing_address'] != null
        ? new BillingAddress.fromJson(json['billing_address'])
        : null;
    shippingAddress = json['shipping_address'] != null
        ? new BillingAddress.fromJson(json['shipping_address'])
        : null;
    if (json['addresses'] != null) {
      addresses = <Addresses>[];
      json['addresses'].forEach((v) {
        addresses!.add(  Addresses.fromJson(v));
      });
    }
    customerGuid = json['customer_guid'];
    username = json['username'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    languageId = json['language_id'];
    currencyId = json['currency_id'];
    dateOfBirth = json['date_of_birth'];
    gender = json['gender'];
    adminComment = json['admin_comment'];
    isTaxExempt = json['is_tax_exempt'];
    hasShoppingCartItems = json['has_shopping_cart_items'];
    active = json['active'];
    deleted = json['deleted'];
    isSystemAccount = json['is_system_account'];
    systemName = json['system_name'];
    lastIpAddress = json['last_ip_address'];
    createdOnUtc = json['created_on_utc'];
    lastLoginDateUtc = json['last_login_date_utc'];
    lastActivityDateUtc = json['last_activity_date_utc'];
    registeredInStoreId = json['registered_in_store_id'];
    subscribedToNewsletter = json['subscribed_to_newsletter'];
    if (json['role_ids'] != null) {
      roleIds = <Null>[];
      json['role_ids'].forEach((v) {
        // roleIds!.add(new Null.fromJson(v));
      });
    }
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.billingAddress != null) {
      data['billing_address'] = this.billingAddress!.toJson();
    }
    if (this.shippingAddress != null) {
      data['shipping_address'] = this.shippingAddress!.toJson();
    }
    if (this.addresses != null) {
      data['addresses'] = this.addresses!.map((v) => v.toJson()).toList();
    }
    data['customer_guid'] = this.customerGuid;
    data['username'] = this.username;
    data['email'] = this.email;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['language_id'] = this.languageId;
    data['currency_id'] = this.currencyId;
    data['date_of_birth'] = this.dateOfBirth;
    data['gender'] = this.gender;
    data['admin_comment'] = this.adminComment;
    data['is_tax_exempt'] = this.isTaxExempt;
    data['has_shopping_cart_items'] = this.hasShoppingCartItems;
    data['active'] = this.active;
    data['deleted'] = this.deleted;
    data['is_system_account'] = this.isSystemAccount;
    data['system_name'] = this.systemName;
    data['last_ip_address'] = this.lastIpAddress;
    data['created_on_utc'] = this.createdOnUtc;
    data['last_login_date_utc'] = this.lastLoginDateUtc;
    data['last_activity_date_utc'] = this.lastActivityDateUtc;
    data['registered_in_store_id'] = this.registeredInStoreId;
    data['subscribed_to_newsletter'] = this.subscribedToNewsletter;
    if (this.roleIds != null) {
      // data['role_ids'] = this.roleIds!.map((v) => v.toJson()).toList();
    }
    data['id'] = this.id;
    return data;
  }
}

class BillingAddress {
  String? firstName;
  String? lastName;
  String? email;
  String? company;
  int? countryId;
  Null? country;
  int? stateProvinceId;
  String? city;
  String? address1;
  Null? address2;
  String? zipPostalCode;
  String? phoneNumber;
  Null? faxNumber;
  String? customerAttributes;
  String? createdOnUtc;
  Null? province;
  int? id;

  BillingAddress(
      {this.firstName,
        this.lastName,
        this.email,
        this.company,
        this.countryId,
        this.country,
        this.stateProvinceId,
        this.city,
        this.address1,
        this.address2,
        this.zipPostalCode,
        this.phoneNumber,
        this.faxNumber,
        this.customerAttributes,
        this.createdOnUtc,
        this.province,
        this.id});

  BillingAddress.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    company = json['company'];
    countryId = json['country_id'];
    country = json['country'];
    stateProvinceId = json['state_province_id'];
    city = json['city'];
    address1 = json['address1'];
    address2 = json['address2'];
    zipPostalCode = json['zip_postal_code'];
    phoneNumber = json['phone_number'];
    faxNumber = json['fax_number'];
    customerAttributes = json['customer_attributes'];
    createdOnUtc = json['created_on_utc'];
    province = json['province'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['company'] = this.company;
    data['country_id'] = this.countryId;
    data['country'] = this.country;
    data['state_province_id'] = this.stateProvinceId;
    data['city'] = this.city;
    data['address1'] = this.address1;
    data['address2'] = this.address2;
    data['zip_postal_code'] = this.zipPostalCode;
    data['phone_number'] = this.phoneNumber;
    data['fax_number'] = this.faxNumber;
    data['customer_attributes'] = this.customerAttributes;
    data['created_on_utc'] = this.createdOnUtc;
    data['province'] = this.province;
    data['id'] = this.id;
    return data;
  }
  }
  class Addresses {
  String? firstName;
  String? lastName;
  String? email;
  String? company;
  int? countryId;
  Null? country;
  int? stateProvinceId;
  String? city;
  String? address1;
  Null? address2;
  String? zipPostalCode;
  String? phoneNumber;
  Null? faxNumber;
  String? customerAttributes;
  String? createdOnUtc;
  Null? province;
  int? id;

  Addresses(
  {this.firstName,
  this.lastName,
  this.email,
  this.company,
  this.countryId,
  this.country,
  this.stateProvinceId,
  this.city,
  this.address1,
  this.address2,
  this.zipPostalCode,
  this.phoneNumber,
  this.faxNumber,
  this.customerAttributes,
  this.createdOnUtc,
  this.province,
  this.id});

  Addresses.fromJson(Map<String, dynamic> json) {
  firstName = json['first_name'];
  lastName = json['last_name'];
  email = json['email'];
  company = json['company'];
  countryId = json['country_id'];
  country = json['country'];
  stateProvinceId = json['state_province_id'];
  city = json['city'];
  address1 = json['address1'];
  address2 = json['address2'];
  zipPostalCode = json['zip_postal_code'];
  phoneNumber = json['phone_number'];
  faxNumber = json['fax_number'];
  customerAttributes = json['customer_attributes'];
  createdOnUtc = json['created_on_utc'];
  province = json['province'];
  id = json['id'];
  }

  Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['first_name'] = this.firstName;
  data['last_name'] = this.lastName;
  data['email'] = this.email;
  data['company'] = this.company;
  data['country_id'] = this.countryId;
  data['country'] = this.country;
  data['state_province_id'] = this.stateProvinceId;
  data['city'] = this.city;
  data['address1'] = this.address1;
  data['address2'] = this.address2;
  data['zip_postal_code'] = this.zipPostalCode;
  data['phone_number'] = this.phoneNumber;
  data['fax_number'] = this.faxNumber;
  data['customer_attributes'] = this.customerAttributes;
  data['created_on_utc'] = this.createdOnUtc;
  data['province'] = this.province;
  data['id'] = this.id;
  return data;
  }
  }


