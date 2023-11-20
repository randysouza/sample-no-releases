
disp('Fetching Non Demo feature info list');
nondemoFeatureInfoList = com.mathworks.services.lmgr.NonDemoFeatureInfoList;
featureInfoCollection = nondemoFeatureInfoList.getData();
disp('Fetched Non Demo feature info list successfully');


disp(strcat('Number of non demo features: ', featureInfoCollection.size));

disp('Fetching product information from ProductIdentifier ');
disp(strcat('ei ', string(featureInfoCollection.get(0).getEntitlementId)));
for i = 0:(featureInfoCollection.size-1)
    featureInfoForSomeProduct = featureInfoCollection.get(i);
    featureName = featureInfoForSomeProduct.getFeatureName;
    featureBaseCode = com.mathworks.product.util.ProductIdentifier.get(featureName);
    entitlementId = featureInfoForSomeProduct.getEntitlementId;

    disp(strcat('Feature base code: ', string(featureBaseCode)));
    
end

disp('End fetching product information');


