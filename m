Return-Path: <open-iscsi+bncBCN4FJF4WYLRBNFS2OUAMGQEOZB3PPY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id A32937B106C
	for <lists+open-iscsi@lfdr.de>; Thu, 28 Sep 2023 03:39:02 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id 006d021491bc7-57be2b0e95csf12353752eaf.1
        for <lists+open-iscsi@lfdr.de>; Wed, 27 Sep 2023 18:39:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695865141; cv=pass;
        d=google.com; s=arc-20160816;
        b=xwYw4z6vKmpp5yZJN5HnajxAN57DHkVUCR4ULrzWv4bFLdnklDPQzdkmY7OgH4giMe
         P2sKbTNdnJRVtrONZWYyj5kTxsnfCpC/7vSHD/NbcSEOr+TOGose0LWhH3w1KQEZl/Xr
         ekSQtHryrjxSbxAkabiFqzcFVUQ9SJpT1QJKRY5SqIgjYAFsV4aV4JbI1ylwUe9cmZTM
         bCLV2mciD7+wSQGcEVQFt819xyX2AhmefQhvhRFndmx+jaLp4eR9ZhJVYqeLkoUWiEU6
         iQ8ronaOM36T21cxIxCv4ua5Zg9l3iyCuq6a1r5ZBI+VQsRAzisK9nAx+mFKHugcXtAM
         0LEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:dkim-signature;
        bh=xMiENaXGOSpyfXIseyzNYwhbPR4EienlS/3teWcevCA=;
        fh=1P8NgU50PxHZdbwZcm0RhGfpfaEszaZZUlNuX7tjKbk=;
        b=ai7AO3j4PAyaHCnonuu1cPGkscbU7r61K/KNsVppjHt0SWGu64kY6VVcncWLdpzFx+
         p2+vkt4DQp7tdJujBOzml2TDkhjudaq3OdXU68M+7/nKRKx0Tq+TDiiZfsLsoYDG0tPH
         q7jGSraf6kh7NFiuUNtXVn/kKqAU3exGxlWVuPhnKDTnfm6uHbeKtAjAuLn3Q7rBfFfI
         jtddqhtFEI03yb8UxQvN34BRXI+HQXSO/rmmotQAATGj45UV0YGNwpLpH8XAxppWvtqb
         3VOqgK/cigOo0Nt7yJ+WFoq2x+PZMqpiuxDG9DZzgl0lNk85WmQJNofA1V5F1/d+68n+
         55+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1695865141; x=1696469941; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xMiENaXGOSpyfXIseyzNYwhbPR4EienlS/3teWcevCA=;
        b=AWUXmdExYHcaOozXqzGy88DZMxhcxH3SeqFNLO9nDOuGYt8O41+Bpj0PPGIHS/K7Pa
         qc/moqlypBlHJnvngedIVBc6KKHCLsq3SGg12UfCRpkPpeozn8yHrh4P1VgLM3DwJRsY
         J3x52t+F9pwo45bD/EkMigPDSxkKH4jumgRNhQcGqRmUsRhzAstLOCfWE6VfmU/9HiqG
         RFZIVv9J/f/D7YfDc1hWMDBxCbzCFvxTuxkYbh1oK9cw9y7SLxBvSztikaFyQC9ifixB
         5h0UbOE+g6EUs+u9XMOojPkvs8exVCO1aNVMT1WgiRlbRTejSJl3gEr+aYM8f98TjwPZ
         1YCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695865141; x=1696469941;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xMiENaXGOSpyfXIseyzNYwhbPR4EienlS/3teWcevCA=;
        b=gAbSSZMzH1t1e2RM7osW6lpaLmmruWM5Z70uCErlAwDjQmodqUFPINuXl+CpeLGkw5
         Dmjd9KqZkPFpEmswFoiZr/hUmaoqrjiOr5shG1MxWDwdZM4JktmAgIIDWRVjhj4Q20rk
         4QKY1ESC3R4Fc6GeECCO/QaU3XIDXMM4Fv0lJGN5GJCUk/91M3RqpMHVm9OOV8oeUoDE
         sa+9lSXYkqapvkNzQUzZkxrx9emT0IpTpg8M66kGlerxN7D5QMHQ/zVsfLVLRiH+vay3
         Cc1Xu1BffmCEPf8JeJMMEvk/Iq54c2Awp1mbSur9XPhoWnRr3lPrpDgb5hG/oLp8sLBx
         X+Ng==
X-Gm-Message-State: AOJu0YxadRmW6o0TbhKvTESP6i/xHds+YspMgAGH8S8qfIMea0CJRcF2
	FwjT5VCMHMTMY1Z+Sssek3I=
X-Google-Smtp-Source: AGHT+IHQFyE2Q2KWMFZCB6ad62cImaJaxbk9SNL9X4ki/BtImn7bWAUt8adKwEPKahcFGGmKbFoqpA==
X-Received: by 2002:a4a:271a:0:b0:57d:e5e7:6d00 with SMTP id l26-20020a4a271a000000b0057de5e76d00mr3696615oof.6.1695865141120;
        Wed, 27 Sep 2023 18:39:01 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:b2c1:0:b0:57b:7aef:9d1a with SMTP id l1-20020a4ab2c1000000b0057b7aef9d1als224623ooo.0.-pod-prod-05-us;
 Wed, 27 Sep 2023 18:38:59 -0700 (PDT)
X-Received: by 2002:a05:6808:614:b0:39c:59e2:dd79 with SMTP id y20-20020a056808061400b0039c59e2dd79mr3572497oih.36.1695865139345;
        Wed, 27 Sep 2023 18:38:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695865139; cv=none;
        d=google.com; s=arc-20160816;
        b=XnsRYH+chMlxP3QEXjIewSwOfb6nzk84zZ+AH1awo2cc38PnW3njuuLc8qwoVWUWeU
         5ikVGCUwhlq4R8n/D9XpsZdJLqvY2d9x1oL7iFG5okacJzYQv5NH6dAn0OYqVQ4jntXK
         yDHT17AuOFFTyKMZokBBLycgdH5e5+0hTrbQohJCZ4GsLuQSY1HrViTvIrc7lZCld/KQ
         Qa9pgttVR0v9d3IHX5Ozh2fNQCin83j/OaAimv8XOuFGVeH4at7tcl6CUCTA+4b1kBVq
         3RiwtWMyECcLguQ2n1n009yae8sG4HXkchISUGzynC4sWRxWEL7x7KTW0/emWxCvOUgD
         NeWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=fi81aShWy6tCOr93YRLR3TenrwGigytbikQHhfqP6N0=;
        fh=1P8NgU50PxHZdbwZcm0RhGfpfaEszaZZUlNuX7tjKbk=;
        b=zk4R02hVdgwG8I18kW/0aEheCzno0Dz+6JgZeC7oQFOh1ezymkd1VG0KZ2+aR7drXg
         E3lyNR3neKeV44mWzE5sfhSITNjj1Z7FEUZHcmtbyRVqNTvLWukI3pbGEASfoNIH8rPZ
         9J2SBhkW0Nh0a6RwSmP7eaa+Y3+iolXcw2Njj3pxgG/bONduoKiri1tSUon1zWcczAcV
         xK+2D96ALjx37eOTwkRFjZhO1Jz5uo3H4pc9vIdUaSGkpvnPvkVKQ+J5ZSapwoh3YYKm
         mTyZ0SsZ2UjvliroxWanhdpw3pJBlnXt/KBFlqV0fHAKJzAE8/SrHdVz1X0QaWr/B79t
         cCOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id cp5-20020a056a00348500b00690fb1968c4si1357375pfb.2.2023.09.27.18.38.59
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2023 18:38:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from kwepemm000012.china.huawei.com (unknown [172.30.72.53])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4Rwx0S45CdzrStx;
	Thu, 28 Sep 2023 09:36:40 +0800 (CST)
Received: from [10.174.178.220] (10.174.178.220) by
 kwepemm000012.china.huawei.com (7.193.23.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Thu, 28 Sep 2023 09:38:56 +0800
Message-ID: <382fe161-95fb-3249-32cf-07058f81a4bc@huawei.com>
Date: Thu, 28 Sep 2023 09:38:55 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v5 01/10] scsi: scsi_debug: create scsi_debug directory in
 the debugfs filesystem
Content-Language: en-US
To: <dgilbert@interlog.com>, "James E . J . Bottomley" <jejb@linux.ibm.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <louhongxiang@huawei.com>
References: <20230922092906.2645265-1-haowenchao2@huawei.com>
 <20230922092906.2645265-2-haowenchao2@huawei.com>
 <8c7cfe09-d145-4387-91cf-da9d4e2398e1@interlog.com>
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <8c7cfe09-d145-4387-91cf-da9d4e2398e1@interlog.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.174.178.220]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 kwepemm000012.china.huawei.com (7.193.23.142)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao2@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao2@huawei.com designates 45.249.212.187 as
 permitted sender) smtp.mailfrom=haowenchao2@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Wenchao Hao <haowenchao2@huawei.com>
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On 2023/9/28 9:13, Douglas Gilbert wrote:
> On 2023-09-22 05:28, Wenchao Hao wrote:
>> Create directory scsi_debug in the root of the debugfs filesystem.
>> Prepare to add interface for manage error injection.
>>
>> Acked-by: Douglas Gilbert <dgilbert@interlog.com>
>> Signed-off-by: Wenchao Hao <haowenchao2@huawei.com>
>> ---
>> =C2=A0 drivers/scsi/scsi_debug.c | 6 ++++++
>> =C2=A0 1 file changed, 6 insertions(+)
>>
>> diff --git a/drivers/scsi/scsi_debug.c b/drivers/scsi/scsi_debug.c
>> index 9c0af50501f9..35c336271b13 100644
>> --- a/drivers/scsi/scsi_debug.c
>> +++ b/drivers/scsi/scsi_debug.c
>> @@ -41,6 +41,7 @@
>> =C2=A0 #include <linux/random.h>
>> =C2=A0 #include <linux/xarray.h>
>> =C2=A0 #include <linux/prefetch.h>
>> +#include <linux/debugfs.h>
>> =C2=A0 #include <net/checksum.h>
>> @@ -862,6 +863,8 @@ static const int device_qfull_result =3D
>> =C2=A0 static const int condition_met_result =3D SAM_STAT_CONDITION_MET;
>> +static struct dentry *sdebug_debugfs_root;
>> +
>> =C2=A0 /* Only do the extra work involved in logical block provisioning =
if one or
>> =C2=A0=C2=A0 * more of the lbpu, lbpws or lbpws10 parameters are given a=
nd we are doing
>> @@ -7011,6 +7014,8 @@ static int __init scsi_debug_init(void)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 goto driver_unreg=
;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> +=C2=A0=C2=A0=C2=A0 sdebug_debugfs_root =3D debugfs_create_dir("scsi_deb=
ug", NULL);
>=20
> debugfs_create_dir() can fail and return NULL. Looking at other drivers, =
most
> seem to assume it will work. Since the scsi_debug driver is often used to=
 test
> abnormal situations, perhaps adding something like:
>  =C2=A0=C2=A0=C2=A0 if (!sdebug_debugfs_root)
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pr_info("%s: failed to create=
 initial debugfs directory\n", __func__);
>=20
> might save someone a bit of time if a NULL dereference on sdebug_debugfs_=
root
> follows later. That is what the mpt3sas driver does.
>=20

Yes, I would fix it by checking return value of debugfs related call
after your review suggestions for other patches.

> Doug Gilbert
>=20
>> +
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for (k =3D 0; k < hosts_to_add; k++) {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (want_store &&=
 k =3D=3D 0) {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 ret =3D sdebug_add_host_helper(idx);
>> @@ -7057,6 +7062,7 @@ static void __exit scsi_debug_exit(void)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sdebug_erase_all_stores(false);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 xa_destroy(per_store_ap);
>> +=C2=A0=C2=A0=C2=A0 debugfs_remove(sdebug_debugfs_root);
>> =C2=A0 }
>> =C2=A0 device_initcall(scsi_debug_init);
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/382fe161-95fb-3249-32cf-07058f81a4bc%40huawei.com.
