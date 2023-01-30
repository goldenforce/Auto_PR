DELETE FROM ft_t_uibl
WHERE business_label_txt='Convertible Type' 
	AND business_label_nme='Common Stock Ticker Exchange' 	
	AND screen_attr_path_desc='Bonds.BondFeatures.ConvertibleType';

--added 02.11.2022
DELETE FROM ft_t_uibl
WHERE business_label_txt='Coupon Daycount Code' 
	AND business_label_nme='Fix To Float Day Count' 	
	AND screen_attr_path_desc='Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CouponDaycountCodeDesc';

DELETE FROM ft_t_uibl
WHERE business_label_txt='Coupon Frequency Unit Quantity' 
	AND business_label_nme='Fix To Float Coupon Frequency' 	
	AND screen_attr_path_desc='Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CouponFreqUnitQuantity';
