# foreach SERVICE ( auth products orders )
cd auth
docker build -t codife/node-kubernetes-auth-service .
# docker push codife/node-kubernetes-auth-service
cd ..

cd products
docker build -t codife/node-kubernetes-products-service .
# docker push codife/node-kubernetes-products-service
cd ..

cd orders
docker build -t codife/node-kubernetes-orders-service .
# docker push codife/node-kubernetes-orders-service
cd ..
# end

kubectl delete -f kubernetes
kubectl apply -f kubernetes