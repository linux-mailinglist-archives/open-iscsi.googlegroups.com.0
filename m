Return-Path: <open-iscsi+bncBAABBNOE2SNQMGQEGJU22NY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F6062C6BA
	for <lists+open-iscsi@lfdr.de>; Wed, 16 Nov 2022 18:47:35 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id bm2-20020a05620a198200b006fa6eeee4a9sf18170363qkb.14
        for <lists+open-iscsi@lfdr.de>; Wed, 16 Nov 2022 09:47:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1668620854; cv=pass;
        d=google.com; s=arc-20160816;
        b=PTU2FaHG3zGOxuoQTS4CvcFkBqkm35EqVfHBdj7BD2UXyJwwMgU2aFPRh17mVhjugB
         tW/9w4Od1jO3kA1p+pDM6s4jAkr1HI9+TAEeQpWRX0vjhyq2C5RpeiF+n7a8Tr8pgMcq
         DbbgkVZqfGOWH8kn8LTuLM5t4okgk3JTW0azXYvCp5tMrdVCakamUkN7z8bZMgQy/MGx
         RSlvgY0mRUphoU+4fT+a5Ag42RBRGWYE0llnEOq/lAQxgT1bcBWK9Y2rD5cL3NAOenYE
         Defb3Q8N+Qn4PKJhwBB5fZrA2Imq9SYmxcsV1QB4LztXK9GczYIR2N8e8EYt5nAjQNfr
         DiUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=fseQKIzRMDQmksP2qwnImvwXvv/esRR0VmFRuP9KH6M=;
        b=IyOt1OzOHfqhYyoSaWUK6MhwBI9qzInu0rw02Bg35HKGf0GhwbW3YnkOstznrx/aH6
         i1wZMGi0oB0ZhrD0QZY7LJw1nC+9PgAFcMVxwq9YzxvJ7qnm9qFuF+O+LBCmt7QIwtjk
         jtiZ7QbKpGJ0t0fJV1/HjXHTwS8SDihPqnjcAkzi0pZJHGmLCEAiJb52hP1FYivfAd3m
         Xscs7C+jVYKp8jwccrVo66403mOJ2DkgNgXZ9MnTcOX2ixAmif8m1O02rD2FbjEco8DM
         5KDykmccxcpeBgqLP5CMWtWStCuZVv4TZJs0MAWM21FKyBLxddvG51hWe7xP8fQcejgb
         UiBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangyingliang@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=yangyingliang@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fseQKIzRMDQmksP2qwnImvwXvv/esRR0VmFRuP9KH6M=;
        b=hCBCHHWcUZJWxdzi33xGbrlMi2eJuIT6xtYkrUk32sw29f+QSQziLzi0XyaJ5bTsHk
         FS2sqCgH4Go9lLMUAMX+03QbGAAZkyazxH+Ls1Vz3eTWo1OKDM3/e6RT/4YEEg4VR2lp
         ejrpr2rDNmTFDQNE64akBrfyNlm2UtwG1aw8CezKGR4u+L77knFzvntq7GrwuBEBgfcG
         jScOb+qRQavGdqayj9ZllhUBVtQB1qVh9DTaWZOxzEdQDldUqZUc08V8Wv93lcL1Q9gv
         VfTKvYezt6mGgPeB0sSVtiJdUF08Q1saOeY9O9cPBIe9m5WcKG5PQXyOyHpqwfawhW2x
         WKlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fseQKIzRMDQmksP2qwnImvwXvv/esRR0VmFRuP9KH6M=;
        b=V/nQ+yokxG5yGnKDO0WnfiQQf7eFKVTG0eHhLqq09AGyb8XmXqkZAMZBhivMWGEF5r
         QyXOAvqPauaCz5mBexkCeWDA+2qR7jZP2w2mjwOvRGswKI1Pq3+pxhOAbUnUV4jhWdFu
         HWFLBVp5m02xnRMNZ0zhixUG5iXPQWObRLixzi9Skiute8AWy4QNZid6piVxGD+UX/hq
         uiifoAqdD3RakTwc6Dc/qxzU5QGitBk2PI01WUmsMGBK8QCc2hm+PeLod4GXivIJFsyD
         sWPVSu+irIuCCydlec8awLVgG74++IM86AnRkRS/zupF8S14oYx+g6YhXD7IWFkBrwaZ
         WyNA==
X-Gm-Message-State: ANoB5plHD0F7zj4HZHnrLcz0YDP+pRWSrAzO8rJSUXWNY5wrBNz+buag
	M5g63lato/iiScfE39dUk1o=
X-Google-Smtp-Source: AA0mqf5X0ua66pKWyyF2wuys0BG85ueJcG/Km8BsPHykthiRMqe8wLJ/+tnSk/4rLcUQ51NTcyb7Lg==
X-Received: by 2002:a05:622a:4805:b0:3a5:3020:bd76 with SMTP id fb5-20020a05622a480500b003a53020bd76mr21833951qtb.547.1668620854471;
        Wed, 16 Nov 2022 09:47:34 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:a95b:0:b0:4b8:66bf:5723 with SMTP id z27-20020a0ca95b000000b004b866bf5723ls8458395qva.2.-pod-prod-gmail;
 Wed, 16 Nov 2022 09:47:33 -0800 (PST)
X-Received: by 2002:a05:6214:5b89:b0:4bb:6b72:3c36 with SMTP id lq9-20020a0562145b8900b004bb6b723c36mr21699421qvb.121.1668620853291;
        Wed, 16 Nov 2022 09:47:33 -0800 (PST)
Received: by 2002:a05:620a:3715:b0:6fa:1662:655a with SMTP id af79cd13be357-6fb1b3289e6ms85a;
        Thu, 10 Nov 2022 00:44:21 -0800 (PST)
X-Received: by 2002:ad4:5ced:0:b0:4bb:e946:fb5e with SMTP id iv13-20020ad45ced000000b004bbe946fb5emr53204882qvb.33.1668069861546;
        Thu, 10 Nov 2022 00:44:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1668069861; cv=none;
        d=google.com; s=arc-20160816;
        b=QrnXmFXFV+kVGzIzmiRLMGuSyUcslZ4DxWh7MyHfT5ki+4gMmrdDDItuyEqYafLhwL
         qPAw4n1LTNbA0m/octZ8mQYRXScxTR/vG4tvNsivIU/8LLW/8s6gxlcGPjZd7BUSkdvJ
         o8bFMdyK7HHddpstthVVsfgOEsfUniciumFS/ML1NjHTWjBjTgYndzs6kwGfoGt/hORL
         Lu6kikFNKCgOkPcUEeKTKIhBZlryCAokpFDi2lNv+87Vq0NRI+V3BABjqxxABxhv/d0e
         f17a3Un43oiLlEY24h6H9OUbhBseL464Zd+URBfISyXsSq5v3xHBKB6KrlbiZj+fkWCz
         eB8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=TqexpFY0uGWnQPBOzupzDv3m5rfosJtG3htbojEkq44=;
        b=1BMwHCP1qtSRd/UoHk3bufm4I1nguE5+ls0xQDQjgk1XKCzXTTaohyaa3QoX1JUIXC
         udXG68CJf7S3sjVAO79iXmVya+GUC27939wBB7kr7LWJR+LboJqL0gpWpc1AZGE8njfF
         zPqTdvS7WLQcyGXU8NJXOHi5Qg/mrvjzDKCGIcQFMuB2FPtL5u6g8+EwuJg0nTGqvW+o
         00BTA3HzzPE+By5OqZKZTMsDtvH75uJXr6IDnDxSWC98IGGMmSGu0nlXiX4g/iJtQxRu
         TwH/OSpQ7cq6TiBZXlHlqhuijB6V5zFvNDtR75ghMXMKWW+PIOcnN733bNAjJ1WVEbcH
         iwJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangyingliang@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=yangyingliang@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id y12-20020ac87c8c000000b003a50aea46d7si776156qtv.3.2022.11.10.00.44.21
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Nov 2022 00:44:21 -0800 (PST)
Received-SPF: pass (google.com: domain of yangyingliang@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggpemm500021.china.huawei.com (unknown [172.30.72.56])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4N7FfD2lFxzpWSg;
	Thu, 10 Nov 2022 16:40:36 +0800 (CST)
Received: from dggpemm500007.china.huawei.com (7.185.36.183) by
 dggpemm500021.china.huawei.com (7.185.36.109) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 10 Nov 2022 16:44:17 +0800
Received: from [10.174.178.174] (10.174.178.174) by
 dggpemm500007.china.huawei.com (7.185.36.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 10 Nov 2022 16:44:17 +0800
Subject: Re: [PATCH] drivers: base: transport_class: fix possible memory leak
To: Greg KH <gregkh@linuxfoundation.org>
CC: <open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <lduncan@suse.com>, <cleech@redhat.com>,
	<michael.christie@oracle.com>, <jejb@linux.ibm.com>,
	<martin.petersen@oracle.com>, <rafael@kernel.org>
References: <20221110034809.17258-1-yangyingliang@huawei.com>
 <Y2yzwB0IuaVS3AVq@kroah.com>
From: "'Yang Yingliang' via open-iscsi" <open-iscsi@googlegroups.com>
Message-ID: <d509e930-779b-866e-9b1f-d58db6abfc43@huawei.com>
Date: Thu, 10 Nov 2022 16:44:16 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <Y2yzwB0IuaVS3AVq@kroah.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [10.174.178.174]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpemm500007.china.huawei.com (7.185.36.183)
X-CFilter-Loop: Reflected
X-Original-Sender: yangyingliang@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yangyingliang@huawei.com designates 45.249.212.187 as
 permitted sender) smtp.mailfrom=yangyingliang@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Yang Yingliang <yangyingliang@huawei.com>
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

Hi Greg,

On 2022/11/10 16:18, Greg KH wrote:
> On Thu, Nov 10, 2022 at 11:48:09AM +0800, Yang Yingliang wrote:
>> Current some drivers(like iscsi) call transport_register_device()
>> failed, they don't call transport_destroy_device() to release the
>> memory allocated in transport_setup_device(), because they don't
>> know what was done, it should be internal thing to release the
>> resource in register function. So fix this leak by calling destroy
>> function inside register function.
>>
>> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
>> Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
>> ---
>>   include/linux/transport_class.h | 9 ++++++++-
>>   1 file changed, 8 insertions(+), 1 deletion(-)
>>
>> diff --git a/include/linux/transport_class.h b/include/linux/transport_class.h
>> index 63076fb835e3..f4835250bbfc 100644
>> --- a/include/linux/transport_class.h
>> +++ b/include/linux/transport_class.h
>> @@ -70,8 +70,15 @@ void transport_destroy_device(struct device *);
>>   static inline int
>>   transport_register_device(struct device *dev)
>>   {
>> +	int ret;
>> +
>>   	transport_setup_device(dev);
>> -	return transport_add_device(dev);
>> +	ret = transport_add_device(dev);
>> +	if (ret) {
>> +		transport_destroy_device(dev);
>> +	}
> Please use scripts/checkpatch.pl on your patches before sending them out
Sure, of course. :)
> so you don't get grumpy maintainers asking you to use
> scripts/checkpatch.pl on your patches :)
I sent a fix patch to iscsi system earlier:
https://patchwork.kernel.org/project/linux-scsi/patch/20221109092421.3111613-1-yangyingliang@huawei.com/

Mike give his point in the mail, so I send a new patch keep iscsi 
maintainers Cced.

Thanks,
Yang
>
> thanks,
>
> greg k-h
>
> .

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/d509e930-779b-866e-9b1f-d58db6abfc43%40huawei.com.
