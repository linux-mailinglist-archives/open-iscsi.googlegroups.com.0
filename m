Return-Path: <open-iscsi+bncBAABBHGE2SNQMGQEHKNJ2JA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A86C62C6B5
	for <lists+open-iscsi@lfdr.de>; Wed, 16 Nov 2022 18:47:11 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id u5-20020a05620a0c4500b006fb30780443sf15919226qki.22
        for <lists+open-iscsi@lfdr.de>; Wed, 16 Nov 2022 09:47:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1668620830; cv=pass;
        d=google.com; s=arc-20160816;
        b=iRWU9t0HcGtRsn2XmiAjE72ET0sNxPvuzhRfTCyU/74/hQqRvdir1eLKXg5S/s0wvo
         C1oPGj6Zf4VXJp5yAKhbtCa618UzcgsJORFczncUPFRCXeOdlem0EzbaGYyt2aKrvyec
         6iTVfMhzxG17fMlbLmsak04/cU50b+ZegnO9msNI8ZR9IobhOxPv05lzi+xUn+4+vJ3s
         55qhyuQETeerkgUfxsttK3UZlPGZo6wW12tNQvkd37pddUZkukHHN6bpNRCbGBoGyhkZ
         AcntalXncu0gO4FomU4mQQSmxYaSkWqIgSVhTbIY8RJXX529zssRMvVkV5cdCzQSMRWu
         3ylA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-transfer-encoding:content-language:accept-language
         :references:message-id:date:thread-index:thread-topic:subject:cc:to
         :from:dkim-signature;
        bh=xA0Zr7bxNr4C97rMv5KDHdI3w6F9nhwbM/YMZuIhJng=;
        b=aBHtGSO/+0hgqK0MfXQ4i0twsODvIfrl1qVxbM42V7XfU5VtooEa8To3MFEsDbCDvb
         boUDXbPZkSn8ob833qEUmUm7xhmKvdDgAlS/IbiB1EbXswiYhHmNOQgLnyGgs3IObipN
         z9bK8Ekzi7dCXdtw6vr20ptRy18DIsxLLBuxxpyYfZ3RgFfJzTFGBNjPkNWVTa/tZtBP
         bKjnfZw3xzuVieKyKbhKtbDBkOq2zGVREm2yl95Qld63QqH/d3jJ2EQfAjUXu2tMDrxy
         Fot4hUioU2RmSL+YB0yIuo3jaVa5MZVyiCZfSwXt6P81yEAE+z9tKJBvOfUcQOOtcTbC
         fg/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of zhouguanghui1@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=zhouguanghui1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-language:accept-language
         :references:message-id:date:thread-index:thread-topic:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=xA0Zr7bxNr4C97rMv5KDHdI3w6F9nhwbM/YMZuIhJng=;
        b=seEv8K7DXAyn2ulOkl0ehkVQZQWJWS7a46PbFN/XV7AxDjTHG9Nw2lXEr42HdwbqjO
         25Kq6I98NsUNC9slf60zeXflgd4Z3LeWxKChtE6J56BpsAP2wI/blfSDBfm1QUQxo2yb
         Wdo4/sS96v+sf+dKu65vYEXlo7zlf1CxZh4NOsdz3944+CtCZ5+g8OwHzm0lrY/ktxK7
         eUJ8Rt/4NHsyaMvh3UVXqGlBIIDOp1YMJyGWPbRcz3FTBts19vM+lfGGgOBuqgOpN8W4
         V+xChxLBZ3oI6lFfgY6VDndpArQh4hpeanoAH+ykQRh65KxLmGxlqQU8Z4znoR+0vgvR
         LROA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-language:accept-language
         :references:message-id:date:thread-index:thread-topic:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xA0Zr7bxNr4C97rMv5KDHdI3w6F9nhwbM/YMZuIhJng=;
        b=AhtZhWd7ua+EuG1MMQ+G/SnYqYp+xaU4/AA1eTseVtNSnv2+Lyrbifm+t1varn/3ew
         KVszJq1wuOq0FJSHPRUHSEI+3U8QvKsVCmDxL3jJ+2XYp9V6dnhf9Ermxa5aef5cwb6G
         HAlkoinYpTVCVANhqxwKa7iHfjYO6vcbqgibiR0vkfaM+BXOQv+PBvpddC7N43x3zNXr
         ZRXgVaPNtETpy/AZNuaH20y7pjGm5CrVqHhYJgygvR17vHEsJQLPxn0+Sz2JN5Hm8TV1
         7gJBZJGu/lxj3FZh6gCCGJU8yrUqczfz19Qq5c4qLjjKDpTSu5aDVnplfmSxqLA7KqRN
         A5OQ==
X-Gm-Message-State: ANoB5plJBCQR5+FsP46+RUpbOWQ2gzhRfIpGP7o/pRsfC6HCwP1PMOIU
	ZXuaE5xxpUr3lXlEMfJLY+4=
X-Google-Smtp-Source: AA0mqf7igTdfn6cOrGztt+bKqaGNn3zFrpUjhfkr/qGxiUklgj0zVCCJSz/LpAIMivV1J08zQP0z7Q==
X-Received: by 2002:ad4:5841:0:b0:4b7:ebc1:ecd6 with SMTP id de1-20020ad45841000000b004b7ebc1ecd6mr22247738qvb.9.1668620829855;
        Wed, 16 Nov 2022 09:47:09 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:1245:b0:6fa:15e3:35b6 with SMTP id
 a5-20020a05620a124500b006fa15e335b6ls11804100qkl.3.-pod-prod-gmail; Wed, 16
 Nov 2022 09:47:08 -0800 (PST)
X-Received: by 2002:a05:620a:d46:b0:6fb:884f:4690 with SMTP id o6-20020a05620a0d4600b006fb884f4690mr11710335qkl.351.1668620828519;
        Wed, 16 Nov 2022 09:47:08 -0800 (PST)
Received: by 2002:a05:620a:1a88:b0:6fa:91f3:a76d with SMTP id af79cd13be357-6fb1b36aafcms85a;
        Wed, 9 Nov 2022 18:01:56 -0800 (PST)
X-Received: by 2002:a1f:6dc6:0:b0:3af:2f9:4d6e with SMTP id i189-20020a1f6dc6000000b003af02f94d6emr14496795vkc.40.1668045715719;
        Wed, 09 Nov 2022 18:01:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1668045715; cv=none;
        d=google.com; s=arc-20160816;
        b=XbPSoBn9Vs34P8DwltH8VWVY+GXEmFn0wzbZxkdq17nmvf85m+eHIs8rGNxNLJli56
         zvvUPWxFHghVh4h4uxToNktQr1Aw5IKVr0jFzqC9z1AchCPYt6Tj0TjoIc4aVCYeEDcz
         hrmxqCZBPZNDZ15k4KHKDd1P3G3Z+hdE9E0tmKSgyo63XCq8HW7gpNcgke7zfX5nBHG8
         2LAy/t+Q/nxmTvmDOcxGydptU2gvenIAJUSRdFEmoEUDQIwHVXc1rtMMzw9XK35nsiPE
         l9Ut9KK1OXQfsdDWFtKb9uRSEDp/7WUKdFRb/X23xjTsZt1gP1PC89vl/xoe6obKUjr9
         uHwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=A/C7nBQBFAyHjT4eB8zSwYd4QdXspH/EBkURfoDuzWc=;
        b=0inMQgCstfAK+WabBKRZA6yPN4ISFCU9TcExyjlKJpYNWEIHoWlA/118je7BbtRdGc
         ZY+ttSvPTcTVIULiPWDAHxXRaBikcsO2N8Qs3McoBZ1NSGwmwj9V3tBDG3MBAQAYvPpF
         w6vhki7jaqrFWRZfttXAX9mp7B+fzHJeAHjL9JQYfhuf7sy5xQEibPNA0mIOgmHcpsZZ
         dnIywDLuJfWCcrTGvqgTULc5pd73sMEW+uQrjoawscIhFo1/KZRLQf7Y/raXoQEjuKaN
         /SgEfOh8Dn+NdVhWQHY5lw5HzA117cjEPb6wYE5uiWnRS0+K8PnL/3c64Spang79Ucrq
         kixw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of zhouguanghui1@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=zhouguanghui1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id s184-20020a1f90c1000000b003b758af3b49si729870vkd.5.2022.11.09.18.01.55
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Nov 2022 18:01:55 -0800 (PST)
Received-SPF: pass (google.com: domain of zhouguanghui1@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from kwepemi500018.china.huawei.com (unknown [172.30.72.53])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4N74nh1fW8zHvcL;
	Thu, 10 Nov 2022 10:01:28 +0800 (CST)
Received: from kwepemi500016.china.huawei.com (7.221.188.220) by
 kwepemi500018.china.huawei.com (7.221.188.213) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 10 Nov 2022 10:01:53 +0800
Received: from kwepemi500016.china.huawei.com ([7.221.188.220]) by
 kwepemi500016.china.huawei.com ([7.221.188.220]) with mapi id 15.01.2375.031;
 Thu, 10 Nov 2022 10:01:53 +0800
From: "'Zhouguanghui' via open-iscsi" <open-iscsi@googlegroups.com>
To: Mike Christie <michael.christie@oracle.com>, "lduncan@suse.com"
	<lduncan@suse.com>, "cleech@redhat.com" <cleech@redhat.com>,
	"jejb@linux.ibm.com" <jejb@linux.ibm.com>, "martin.petersen@oracle.com"
	<martin.petersen@oracle.com>
CC: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
	"linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>
Subject: Re: [-next] scsi: iscsi: fix possible memory leak in
 iscsi_register_transport
Thread-Topic: [-next] scsi: iscsi: fix possible memory leak in
 iscsi_register_transport
Thread-Index: AQHY9GqyoD3+swMknU2PtJGQGycang==
Date: Thu, 10 Nov 2022 02:01:53 +0000
Message-ID: <51f33b2f00334114bbb0663a51354404@huawei.com>
References: <20221109081917.34311-1-zhouguanghui1@huawei.com>
 <c4b77a0f-c53d-42fa-8d42-a08a12f59667@oracle.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.174.178.109]
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Original-Sender: zhouguanghui1@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of zhouguanghui1@huawei.com designates 45.249.212.188 as
 permitted sender) smtp.mailfrom=zhouguanghui1@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Zhouguanghui <zhouguanghui1@huawei.com>
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

On 2022/11/10 3:36, Mike Christie wrote:
> On 11/9/22 2:19 AM, Zhou Guanghui wrote:
>> "unreferenced object 0xffff888117908420 (size 16):
>>    comm ""modprobe"", pid 18125, jiffies 4319017437 (age 73.039s)
>>    hex dump (first 16 bytes):
>>      62 65 32 69 73 63 73 69 00 84 90 17 81 88 ff ff  be2iscsi........
>>    backtrace:
>>      [<00000000f78a13b3>] __kmem_cache_alloc_node+0x157/0x220
>>      [<00000000200a51a4>] __kmalloc_node_track_caller+0x44/0x1b0
>>      [<0000000033ea4d64>] kstrdup+0x3a/0x70
>>      [<00000000ec6d2980>] kstrdup_const+0x41/0x60
>>      [<0000000055015f6f>] kvasprintf_const+0xf5/0x180
>>      [<000000009dd443d2>] kobject_set_name_vargs+0x56/0x150
>>      [<00000000f3448e98>] dev_set_name+0xab/0xe0
>>      [<0000000080ab8992>] iscsi_register_transport+0x1f8/0x610 [scsi_tra=
nsport_iscsi]
>>      [<000000005e2c324d>] 0xffffffffc1260012
>>      [<00000000df6e6a36>] do_one_initcall+0xcb/0x4d0
>>      [<00000000181109df>] do_init_module+0x1ca/0x5f0
>>      [<00000000b3c4fec8>] load_module+0x6133/0x70f0
>>      [<00000000feb08394>] __do_sys_finit_module+0x12f/0x1c0
>>      [<00000000ca6af44d>] do_syscall_64+0x37/0x90
>>      [<00000000132e1a8b>] entry_SYSCALL_64_after_hwframe+0x63/0xcd"
>>
>> If device_register() returns error in iscsi_register_transport(),
>> the name allocated by the dev_set_name() need be freed.
>>
>> Fix this by calling put_device(), the name will be freed in the
>> kobject_cleanup(), and the priv will be freed in
>> iscsi_transport_release.
>>
>> Signed-off-by: Zhou Guanghui <zhouguanghui1@huawei.com>
>> ---
>>   drivers/scsi/scsi_transport_iscsi.c | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_tra=
nsport_iscsi.c
>> index cd3db9684e52..51e2c0f5e2d0 100644
>> --- a/drivers/scsi/scsi_transport_iscsi.c
>> +++ b/drivers/scsi/scsi_transport_iscsi.c
>> @@ -4815,7 +4815,7 @@ iscsi_register_transport(struct iscsi_transport *t=
t)
>>   	dev_set_name(&priv->dev, "%s", tt->name);
>>   	err =3D device_register(&priv->dev);
>>   	if (err)
>> -		goto free_priv;
>> +		goto put_dev;
>>  =20
>>   	err =3D sysfs_create_group(&priv->dev.kobj, &iscsi_transport_group);
>>   	if (err)
>> @@ -4850,8 +4850,8 @@ iscsi_register_transport(struct iscsi_transport *t=
t)
>>   unregister_dev:
>>   	device_unregister(&priv->dev);
>>   	return NULL;
>> -free_priv:
>> -	kfree(priv);
>> +put_dev:
>> +	put_device(&priv->dev);
>>   	return NULL;
>>   }
>>   EXPORT_SYMBOL_GPL(iscsi_register_transport);
>=20
> Reviewed-by: Mike Christie <michael.christie@oracle.com>
>=20
> Shoot, I see the comment about using put_device in device_add.
> I'm not sure what happened, but I made the same mistake above
> in 4 other places.
>=20
> Do you want to send patches for the other ones? If not, I'll do
> it.
>=20

Mike=EF=BC=8Cthanks.

I also found 4 other places that have the same mistake. I'll be sending=20
a patch v2 soon.

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/51f33b2f00334114bbb0663a51354404%40huawei.com.
