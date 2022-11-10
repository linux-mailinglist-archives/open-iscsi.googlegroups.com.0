Return-Path: <open-iscsi+bncBAABBHGE2SNQMGQEHKNJ2JA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-x113b.google.com (mail-yw1-x113b.google.com [IPv6:2607:f8b0:4864:20::113b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6566E62C6B6
	for <lists+open-iscsi@lfdr.de>; Wed, 16 Nov 2022 18:47:11 +0100 (CET)
Received: by mail-yw1-x113b.google.com with SMTP id 00721157ae682-36fc0644f51sf170737467b3.17
        for <lists+open-iscsi@lfdr.de>; Wed, 16 Nov 2022 09:47:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1668620830; cv=pass;
        d=google.com; s=arc-20160816;
        b=SHxEGGPeShcSPuVdSUJKL9FBf/YqnEshLpMUNE04A286EcbXc37mQTgIBRA1G7OUOV
         Guyvb8avYKwlm+t6X6ATHLhQNg6Go2DPufqdrHLwDySIFcbQB4Fxi4bZISrFvt1Lk7G+
         YfCBy0eTp+UGaqjK3ARSj7QUCk53DziYqZtF9U1b3ytrB8auk6yUS63n2YeEF5fkJ0cM
         m/RMzSwD8CnZkH2MNd4dndNcvv/eK6n8V5E7LYC2Vru3+jnfosQ+jo2MFTjbscweVRVa
         LxA5ypwROpnoOIkS9LpbZou6Vpel7zJF1Qk1mjwdNK8AOfkpgyzbykG0p/QWL0tDs3m9
         zAhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=pwny5glQbPm2iQZbHfA/2C98R2d7Bz9uBn5cBH96LkM=;
        b=hvzZjnJUGS80uFpqmHWp3LpyaVVkbhtql60gMqa8Ou7VNBMuAz57r22CYa2EVz7HWv
         eqR4s3nAmB2YCzXffMxnTQOqbeBP1Noyh72XHiHfi5ClZrT40HVVi2T43Wfe2okRvV67
         L4md9+zOD3dLEnZq3J4MeGUQ0ay9L1KZ7OsXVmS0rsV7QboNIx9yXfDfmN4jW6hvwYeP
         3g0UUI08WRtOEjQXgLRRsUTOXXOlZ4cQpqT/iDGTuaF8QKTJzNLonzDvGNaB3kjphmaO
         WGE0pJiPGyPkTFiIoikcn4IWozqVPAzJ/PKbYqKJl9jBCEJ7oKcF+oXgunkYk3sCKVkU
         rtsg==
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
        bh=pwny5glQbPm2iQZbHfA/2C98R2d7Bz9uBn5cBH96LkM=;
        b=h4x15f+ucXyiEDdxtkGOoBrM8c9iHFw1gYJV3EPCw6mWs1AtVahumFCAQ1urh0b7EY
         02d4lBjmQGA8MLGyidlJXS7qM/EAPyk6O26tO+3itKYt/I/273ux2WPWyAxJQXFZJMep
         tO0NIcHVMX4VFKxaS9KQcYhB9FRSBiIY58YY8v+ZLs5MKAz7up6uiT2VMpnRE8qWwkWO
         7U3BT3mWzCYN5/iasjB0BNvVHGTJmxj7hlpLmCLIxw5Cx3mJR/4A5MEmbu9lPy8kBkrs
         /eFd7mcXrc1uUfPvSLeIeDb1OR0fRCSoiuEGRfhNgrWKT44b+TAGy1lYToPwPRtTtpMS
         QceA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pwny5glQbPm2iQZbHfA/2C98R2d7Bz9uBn5cBH96LkM=;
        b=Da7c0fRSN8CsO0po9mh+plPDslA46K4fuJ+2SaTG5wyujQ5clQHxPV5FwfbD1arcv0
         75gyXL39LYyH+8fv9o16BPcGLuAr2HUFH4AsiNAhwSZYTLhK4OhafRV5cCY9uB63TS6A
         vzBUcUimtxgiONY/WOUjD24kTssyzgVa7hBUEOMzUncgkzUKNe5aV8Uh7jeoxhSAczV+
         r18RKcvMUf1bv3mGVQ/kjPpXvu7hnUZGstljJn4BPdFHIe4zA+l/IVz2HRhUvjewpkbs
         JejdVwaNtJREyEIpI8lo26qhx12hjIzPtj80iS3uIi/3wJNTthap4LpbT0/eYy+gOAKH
         SRoQ==
X-Gm-Message-State: ANoB5pktjutsNVdBy4Uya6z94Ax2XexExzSvRsCojp6rXjFIWPTGGeQD
	GOHWgqSKBDCEtd9lDruLFLA=
X-Google-Smtp-Source: AA0mqf5wZ+kLNJ6TWerXYPDcu9I0UOOzq29+VYj9nXh4RpMkkvrT0T8b/0gMetbKIFux56vvvfsEiQ==
X-Received: by 2002:a81:5344:0:b0:370:4d2d:8edd with SMTP id h65-20020a815344000000b003704d2d8eddmr23762734ywb.120.1668620830036;
        Wed, 16 Nov 2022 09:47:10 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a81:9ad0:0:b0:370:5479:77f1 with SMTP id r199-20020a819ad0000000b00370547977f1ls9022802ywg.4.-pod-prod-gmail;
 Wed, 16 Nov 2022 09:47:08 -0800 (PST)
X-Received: by 2002:a81:10d5:0:b0:388:e4d6:dfa6 with SMTP id 204-20020a8110d5000000b00388e4d6dfa6mr5678809ywq.216.1668620828570;
        Wed, 16 Nov 2022 09:47:08 -0800 (PST)
Received: by 2002:a81:a43:0:b0:36b:abb6:ce89 with SMTP id 00721157ae682-374c5d2c9b7ms7b3;
        Wed, 9 Nov 2022 17:31:07 -0800 (PST)
X-Received: by 2002:a0d:d997:0:b0:36b:190c:8122 with SMTP id b145-20020a0dd997000000b0036b190c8122mr58216767ywe.110.1668043867466;
        Wed, 09 Nov 2022 17:31:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1668043867; cv=none;
        d=google.com; s=arc-20160816;
        b=VAQd6cFjUr8TBAg8GQL20QjzHGvxNGAd+fy4CioQH09oXRHYXXgz1WcdyTEQ6yg/WO
         DbXAlaCakIOoPF+WiKbZ+kUktwcSdLoFbAahkqGKdigGbYnWZlFrjTy/ogquVCC2cy0W
         8eNRjvRpxBxuLZvgpek2+QU8Yj9U59g3JSYSlwxZJRPs3ihx3DI7dI/S4BQAQLjB7UFP
         oirX9xNWWU+4ZWNGxh2nlabI4gL3aVJfVCX/pYyTLGG7aZxiO7iV2E8EAI+OcnToNLOC
         Du4BIubVUxhD5X+P8MqQOAoQd+Sw7rN8JBcE+x+CCCpeiJsNvl7D29OQc8QGKjUtY8qh
         1CRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=gaVxcpRLkehO5Vg1zJ7Dpkm5wnDTG/lF58CvLImvQDI=;
        b=YUVdby8H8Y7LQqA9gA4xKdjbF6639mbQYavQ5Xo03xivvUwvWD2yy9JMQXD/LB0VS+
         mr9gyUCYmq/YdUqPEsqmINFkW8lX+Sg5QGH0a4WULlD1EWxdnc3ZsTpC7xtql9/2l9AZ
         g0OMqxSahem8rwTfmAgSQ0yczzFDse77+Ut/zXqeidCGOzbe4cD6lkeqvaIn5rMDMSvy
         NLVAa44euCbMVBsSUjqkbY0W+f7wCqIueQsEeqMQwpR0YOrfrH46tdK/OAQKoDYE3sXy
         RUjXqaEt1yf8cu/eh4Ibl18h9M8yQlyjHKP5Np1WJTGvkpKMqWbhsT/XleMWev5VJtzl
         Kb4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangyingliang@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=yangyingliang@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id p185-20020a0dffc2000000b0035786664d22si713956ywf.1.2022.11.09.17.31.06
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Nov 2022 17:31:07 -0800 (PST)
Received-SPF: pass (google.com: domain of yangyingliang@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggpemm500020.china.huawei.com (unknown [172.30.72.54])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4N746L4BdFzmVWB;
	Thu, 10 Nov 2022 09:30:50 +0800 (CST)
Received: from dggpemm500007.china.huawei.com (7.185.36.183) by
 dggpemm500020.china.huawei.com (7.185.36.49) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 10 Nov 2022 09:31:04 +0800
Received: from [10.174.178.174] (10.174.178.174) by
 dggpemm500007.china.huawei.com (7.185.36.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 10 Nov 2022 09:31:03 +0800
Subject: Re: [PATCH] scsi: iscsi: fix possible memory leak when
 transport_register_device() fails
To: Mike Christie <michael.christie@oracle.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
CC: <lduncan@suse.com>, <cleech@redhat.com>, <jejb@linux.ibm.com>,
	<martin.petersen@oracle.com>, <yangyingliang@huawei.com>
References: <20221109092421.3111613-1-yangyingliang@huawei.com>
 <41b1cacb-94cc-ad69-11a7-b13452080389@oracle.com>
From: "'Yang Yingliang' via open-iscsi" <open-iscsi@googlegroups.com>
Message-ID: <d8eb4ca4-ee8e-9355-54f8-f41f405e723e@huawei.com>
Date: Thu, 10 Nov 2022 09:31:03 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <41b1cacb-94cc-ad69-11a7-b13452080389@oracle.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [10.174.178.174]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
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


On 2022/11/10 2:51, Mike Christie wrote:
> On 11/9/22 3:24 AM, Yang Yingliang wrote:
>> If transport_register_device() fails, transport_destroy_device() should
>> be called to release the memory allocated in transport_setup_device().
>>
>> Fixes: 0896b7523026 ("[SCSI] open-iscsi/linux-iscsi-5 Initiator: Transport class update for iSCSI")
>> Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
>> ---
>>   drivers/scsi/scsi_transport_iscsi.c | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
>> index cd3db9684e52..88add31a56e3 100644
>> --- a/drivers/scsi/scsi_transport_iscsi.c
>> +++ b/drivers/scsi/scsi_transport_iscsi.c
>> @@ -2085,6 +2085,7 @@ int iscsi_add_session(struct iscsi_cls_session *session, unsigned int target_id)
>>   	return 0;
>>   
>>   release_dev:
>> +	transport_destroy_device(&session->dev);
>>   	device_del(&session->dev);
>>   release_ida:
>>   	if (session->ida_used)
>> @@ -2462,6 +2463,7 @@ int iscsi_add_conn(struct iscsi_cls_conn *conn)
>>   	if (err) {
>>   		iscsi_cls_session_printk(KERN_ERR, session,
>>   					 "could not register transport's dev\n");
>> +		transport_destroy_device(&conn->dev);
>>   		device_del(&conn->dev);
>>   		return err;
> Why doesn't transport_register_device undo what it did and call
> transport_destroy_device? The callers like iscsi don't know what
> was done, so it seems odd to call transport_destroy_device when
> we got a failure.
Yeah, it seems it's better to put the destroy() function in register(), 
I will change
it and send a v2.

Thanks,
Yang
>
>
> .

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/d8eb4ca4-ee8e-9355-54f8-f41f405e723e%40huawei.com.
