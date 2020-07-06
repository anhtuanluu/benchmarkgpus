import tensorflow as tf
if tf.test.gpu_device_name():
    print(tf.__version__)
    print('Default GPU Device: {}'.format(tf.test.gpu_device_name()))
else:
    print(tf.__version__)
    print("Please install GPU version of TF")