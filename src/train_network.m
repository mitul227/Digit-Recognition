load('mnist_all.mat');
weight = .2 * rand(784,28*28) - .1;
final_weight = .2 * rand(10,784) - .1;
bias_weight_h = .2 * rand(784,1) - .1;
bias_weight_o = .2 * rand(10,1) - .1;
for i = 1:5421
    disp(i);
    s = size(train0);
    if s(1) >= i
        row = double(train0(i,:))/255;
        input = row';
        [weight,final_weight,bias_weight_h,bias_weight_o] = train_for_digit(input,weight,final_weight,bias_weight_h,bias_weight_o,0);
    end
    s = size(train1);
    if s(1) >= i
        row = double(train1(i,:))/255;
        input = row';
        [weight,final_weight,bias_weight_h,bias_weight_o] = train_for_digit(input,weight,final_weight,bias_weight_h,bias_weight_o,1);
    end
    s = size(train2);
    if s(1) >= i
        row = double(train2(i,:))/255;
        input = row';
        [weight,final_weight,bias_weight_h,bias_weight_o] = train_for_digit(input,weight,final_weight,bias_weight_h,bias_weight_o,2);
    end
    s = size(train3);
    if s(1) >= i
        row = double(train3(i,:))/255;
        input = row';
        [weight,final_weight,bias_weight_h,bias_weight_o] = train_for_digit(input,weight,final_weight,bias_weight_h,bias_weight_o,3);
    end
    s = size(train4);
    if s(1) >= i
        row = double(train4(i,:))/255;
        input = row';
        [weight,final_weight,bias_weight_h,bias_weight_o] = train_for_digit(input,weight,final_weight,bias_weight_h,bias_weight_o,4);
    end
    s = size(train5);
    if s(1) >= i
        row = double(train5(i,:))/255;
        input = row';
        [weight,final_weight,bias_weight_h,bias_weight_o] = train_for_digit(input,weight,final_weight,bias_weight_h,bias_weight_o,5);
    end
    s = size(train6);
    if s(1) >= i
        row = double(train6(i,:))/255;
        input = row';
        [weight,final_weight,bias_weight_h,bias_weight_o] = train_for_digit(input,weight,final_weight,bias_weight_h,bias_weight_o,6);
    end
    s = size(train7);
    if s(1) >= i
        row = double(train7(i,:))/255;
        input = row';
        [weight,final_weight,bias_weight_h,bias_weight_o] = train_for_digit(input,weight,final_weight,bias_weight_h,bias_weight_o,7);
    end
    s = size(train8);
    if s(1) >= i
        row = double(train8(i,:))/255;
        input = row';
        [weight,final_weight,bias_weight_h,bias_weight_o] = train_for_digit(input,weight,final_weight,bias_weight_h,bias_weight_o,8);
    end
    s = size(train9);
    if s(1) >= i
        row = double(train9(i,:))/255;
        input = row';
        [weight,final_weight,bias_weight_h,bias_weight_o] = train_for_digit(input,weight,final_weight,bias_weight_h,bias_weight_o,9);
    end
end
save('weights.mat');