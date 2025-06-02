Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBDE667AQMGQEYOIZSLY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E53EACB969
	for <lists+open-iscsi@lfdr.de>; Mon,  2 Jun 2025 18:19:28 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id af79cd13be357-7c793d573b2sf797682585a.1
        for <lists+open-iscsi@lfdr.de>; Mon, 02 Jun 2025 09:19:28 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1748881167; cv=pass;
        d=google.com; s=arc-20240605;
        b=lTkKvVCCAd0pimE1by2dQopvHPflzv3/D3Oxn3w4cFgRO+PEyuvV9g984j6v5D5e06
         uqDokg+sN6zhFOFXLcYwepV2FiULbx/F3/InPniRDDp3QIA8vLGrMAhLixjXk6LDPfWu
         2TzWfhnLoG3IRhQEn7H3LAWrCnX0jBJ1Sv4YKzs25bqT4fut9Rdr3hY3+groAfpUK/l1
         e9OOoAbYkr0GyqpjWvQzVGqAmApirjHDjZ6G1zY5SeZfegTTk8/+qLg4BqTeiDGzYemD
         IU3W+dORAaQzGbzWZzizni0H8NdmmOGyz7SzTLK4QydC1IPBKl3hlgk+kRh8iarIttW/
         Qdow==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature;
        bh=ebbi2NPjqgdCxDxpu9jehGzZNQcdrE6umpkEpNKcrvE=;
        fh=NH15IWKzm2J1fnu43/i1a6+hgA03tb+kaoqu0Xjmd3M=;
        b=gudjpXfCmu1IuuqdnGhEDxPFhSLma8PUb88gm+MUn9EJXqLv+z103ISNcMGEnc4tBG
         2LQ3cufTXWjb4EmHDQs1DwCmGS73XgD0+X7wPrqORIS6FH8en73Rjt/vkpgI/nfq5QR8
         CAPseLrRXNfJEtX8FIMyA/JiQkKLnngBGVeVQor7AphX6FLm4K4HO21gpGztvgozla0o
         s9fcTis5vtdmvLZV+XpM4lqL5fQo/PSh5U72BALg7+Mp7H4mNKSeqeGoJ8P/lSJdjfrf
         yWEY6MqtYFbl3XvtlPBPubGa+2gdjmdBAM1bgIbArOJmKEnB1cuj5hKshJSuweaBL8MP
         kcPA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2025-04-25 header.b=Jw4JKak0;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=SM0WyW3i;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1748881167; x=1749485967; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ebbi2NPjqgdCxDxpu9jehGzZNQcdrE6umpkEpNKcrvE=;
        b=LeSRPDUccyQXii1awXplNoAY0LhO86S9se+FJKSZgG8cUuZSxD1tnLjffgGNuO38ER
         5ustqiJeX00amfEg3yQEh4d9kGIqdlOTOt5CQEFZlF4ciq2CoifV2GpDCZhr0QkVFt9M
         0gPEmfchY65PsHtD74mrtBzY42+oC9/vRw9nhUaIdCX4kNuzAxc3eAzWjHWyLMe9ioUs
         nc9Eu6XtSsn6sPzMU6SVjRUZAD2gyHPS3NNB1mcjflcji1VrjlHM7PPu2eiGrdDdbLDR
         nw+3pLuPTgGYk4PxUgOHOjt1gfGBXM1DKC4lKNH5jLrUEDcwPTXRotpqyFvR92HIgIAk
         Y5kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748881167; x=1749485967;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ebbi2NPjqgdCxDxpu9jehGzZNQcdrE6umpkEpNKcrvE=;
        b=CvvGThHJFbsmdhGHwcIZD3vl9VowZzmg3ZnCs2ZiHMTE1jSW9s1QtBb/i2GoVEiDR2
         Tm5rrjJYff3VUJIrAwS0lKGKoFS4v4QBW2uZm30l8AVr4Hf0gf97AsJmPj4iCIJ8f5Ip
         59udohzRrFyMe6GjtNfA/8s01+Fez1sgS6NvwVkhcihNfiEExw16I9ak0eTBrRZpZ5yZ
         fp3iSZ1WCz9iquXuxfNeaqmoqBB2BZ5TLoAMOFspZ+lB8IhaMaxI9fDeAWDuco0CmRx3
         xKrNJzceBlEbDRT/NOL7cMCgNt4WnJGELsHWnlrp/4KW+Ckgt+S+j8J85lQsngi6xJKQ
         Ll3w==
X-Forwarded-Encrypted: i=3; AJvYcCVjzqDeMpmsWFQDJTEEq0cyqCZqmUFmk0GuvX+eHzO+dn3OvPPV+gv0ZXgmX3NsiAH4xXZZ3g==@lfdr.de
X-Gm-Message-State: AOJu0Yxf8U8DXzn9psssS4VDN/2sQg0nPZ8uLRfznW6x27YJZei1lkBt
	WOkt81dxfXjzjec5m3AAsDZEtdiSTXWzO/+UHO4p7ptad1TVjYNj5NXJ
X-Google-Smtp-Source: AGHT+IE9KnZN6zpjuG46F0B4KwCArh1gePVUckKO/w9WNwNUPMLDbEA2pUKhxhzehk5m6lakEWhegQ==
X-Received: by 2002:a05:622a:4c0f:b0:4a4:2d36:51d8 with SMTP id d75a77b69052e-4a44004472cmr230815361cf.22.1748881167024;
        Mon, 02 Jun 2025 09:19:27 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com; h=AZMbMZdSZD3MzHDQ79z48jx2GK32baBDHwYu0s3c2Tdkqno/kQ==
Received: by 2002:ac8:6cd:0:b0:4a2:f20e:bf89 with SMTP id d75a77b69052e-4a4324532d0ls81986491cf.2.-pod-prod-03-us;
 Mon, 02 Jun 2025 09:19:23 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVWOUXjwRYaxx+8AxSs5UVtji9X3tMCivTUsihI99y/Uj9Ilryn6OVm49eOrTTGhvNhOr4SfKq9cXfP@googlegroups.com
X-Received: by 2002:a05:620a:190c:b0:7cf:5352:b3f with SMTP id af79cd13be357-7d0a201cafbmr2326680385a.46.1748881163381;
        Mon, 02 Jun 2025 09:19:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1748881163; cv=pass;
        d=google.com; s=arc-20240605;
        b=QEeHfcLJmZ4EGuMs6CbcWGCjrkCpTIu/SOC+bNY3GSJA03su+2dlHHNdbsywwLOspp
         gaHJtHOz+EXI4Wy2S3JTDUX6XcxRgsyJj9cwEwrZ5KU5X4048lEiBjzUIMyqDKYawvgQ
         hI82j+WY46XONaLx2aMk4TvxWrwfOQIaw3RK72J64DGyaJhP0kjjiHWoE3PsxiPs41TA
         ru4hRVtLJZjomhWOZte3UjTCWXudR+2PY1acns79xT9/AI1P2OtE96PHEs9WLC8l8J6u
         hT4CQAbGj8XcjEA2sPt11TbHaXmrIzPcx6Li9KR+zTCG5JsGgZ5iDszBHYtkaB4/AhAi
         PGDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=aBxNIGWjTqy7o7BAZvOnIFJ60LtJ3tTgpMWOpcDp3vg=;
        fh=ZKNww52FdXEh+F4KszqaqZ9fqoreUsBw+gF9em9r0/M=;
        b=cff88RvwZitD1IBm0Vf2vVF06JE/VOs12o+r6vP/yySJbq69sgU1UAN47T5OdsghZu
         Sune6u5knDFddGMd+HSCDWc5CjD48Wcy2sq7xzgDBUZbxW+XEneyXZup4qNu7Rg14xdd
         HNaPHavCSQK8aflsBW6Z1GyQdbQQ+2zKLNUUXxjnj8iLf0O1BosJcAY1tmM2gt+q3JP4
         Vaf1Tw9CGbfEKehqPGJSUNu8AYBSTvpFfdgZGdY1HsYkofyBaXkARMJv0Uchh/kfzF/S
         xDhN+Fly/wEd/wwAgrTFJjfQTE/nqCCDlpH6SlpBNaD5z0wuCgtRuuuEy+hlDnLzIz4U
         YB1A==;
        dara=google.com
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2025-04-25 header.b=Jw4JKak0;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=SM0WyW3i;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id af79cd13be357-7d09a16a9f2si40483785a.5.2025.06.02.09.19.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Jun 2025 09:19:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 552C4VYA028592;
	Mon, 2 Jun 2025 16:19:23 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 46yrj530sh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 02 Jun 2025 16:19:22 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 552F6N6w033822;
	Mon, 2 Jun 2025 16:19:22 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11on2055.outbound.protection.outlook.com [40.107.220.55])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 46yr786d43-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 02 Jun 2025 16:19:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nzuy6eVIt95NZOkV9V+uYfllEq5nkVmVbHUBFA7wH+yYHoigdJMAjfyKq6O0PfQUJFe5Vo23KNueEhA2ORJRY63R/wNkoJu8nGfLV7cCn2ejguRQG/qYAHhF7sx9QtrUzL8QgyKrl7XH7mZk/VNAEZwqyQTLDN+J+4uYPZWe4ykPAQpqatNfYtgo5QfUkEirKiz2pbUfailRcRqeg+FL9l7ivFrYfwunwWxVivAkWpsi+jStlb2jvqdFelqQPUuWAasi04hk3JxNnCrGOB246QMTAs0gPV5MuPl7lRqy9tSDOUlOG78RbqE/raumFGD/eY/i4p/g8Xcw6bwGBvqD1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aBxNIGWjTqy7o7BAZvOnIFJ60LtJ3tTgpMWOpcDp3vg=;
 b=O2/UUN7UxyPukiBHBaiiqA+dhJVI+69WwL8veuhIhCTJCxZuW7lu87BQJzcZgDeXRb8mI7NGpnlUZ3vxM9BWM4j7TxuwXN7/V6nfNdqertmoU8hNcotcYLp3qGtNqjr6Q15fJxy4kdxhol5OEYMlwlXBDolIPgeG8H+BdzLHmSreJV2s0w8/q7hJbUG/+R+QNGZTCuncsQ+v/HIaNGQhG80BDqcNscPdRtYKgqsi7c9QWe7KOJmHBc5M7acAHlZct9LirdIoWRtHvCwnKlSouUbuIdw7dazpCpTKPqj+lBppMpExzCcfNShIk/L9mzAKqoVznpU8w7ekvI8TqHlmgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CY8PR10MB7243.namprd10.prod.outlook.com (2603:10b6:930:7c::10)
 by DS0PR10MB8152.namprd10.prod.outlook.com (2603:10b6:8:1fd::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.31; Mon, 2 Jun
 2025 16:19:18 +0000
Received: from CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::b779:d0be:9e3a:34f0]) by CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::b779:d0be:9e3a:34f0%4]) with mapi id 15.20.8746.030; Mon, 2 Jun 2025
 16:19:18 +0000
Message-ID: <08566ecc-e056-4331-828c-77f3fa22c3b5@oracle.com>
Date: Mon, 2 Jun 2025 11:19:15 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] scsi: iscsi: fix incorrect error path labels for
 flashnode operations
To: Alok Tiwari <alok.a.tiwari@oracle.com>, lduncan@suse.com,
        cleech@redhat.com, James.Bottomley@HansenPartnership.com,
        martin.petersen@oracle.com, open-iscsi@googlegroups.com,
        linux-scsi@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, darren.kenny@oracle.com
References: <20250530193012.3312911-1-alok.a.tiwari@oracle.com>
Content-Language: en-US
From: "'Mike Christie' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <20250530193012.3312911-1-alok.a.tiwari@oracle.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DS7PR03CA0335.namprd03.prod.outlook.com
 (2603:10b6:8:55::34) To CY8PR10MB7243.namprd10.prod.outlook.com
 (2603:10b6:930:7c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR10MB7243:EE_|DS0PR10MB8152:EE_
X-MS-Office365-Filtering-Correlation-Id: 65ba9234-bc73-40fe-6b9c-08dda1f138d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TWYydERhcTZuQi8zY0psQmhzOW9SVi9ZZzFMVlJrSUxHM1pUeDJSUU1vZlF1?=
 =?utf-8?B?OEFtMkt6OXQ1cFBnNytrbEp3WTJVMCtIaWlRZlpGOGJlT3JjdFBoU3pQZ2l3?=
 =?utf-8?B?WGNUY3Y3YXcrdGFpMitwLzhoZmQySXJaNFZaT2pXcnlvRFhlUURjZDVnK1Ix?=
 =?utf-8?B?Q2FzTWlsOHJJcnJSRW05OUhGY1IvWm9PRk5hY2cvZTdxWmlLUnBFUFZuTzFQ?=
 =?utf-8?B?VjFLcUZQTnVGcDMwdnd6NFJRNk56cHYvYTJENFI3cnk1V1Q4WmZUQWZDanlH?=
 =?utf-8?B?cTRBY2N6ZDZUNzJBeXJjNjBYamErR0s1STN2VG1uL3E0bm82UllQS0kzTC9V?=
 =?utf-8?B?STA3NytsNVZOR3NIYVVsRkVQVUVXQ0xRVnhLaC8xeUhCclcxWTJTVHZFT3lv?=
 =?utf-8?B?bm9mK2d1K3h5Zy9QTmx5UTZYb3VCL2ZVY1VkMmFXSlA1QlpUaWl0TllMKzZQ?=
 =?utf-8?B?MG5JRXpuQTkrZG9VVS9McnhKVDloTjdhZENFUEJ6L09aQUtKZ3N5dENkVnZK?=
 =?utf-8?B?TjZWQ3lzWmFtemhrb2swYmZBMUhyc0lZUW5uYkJrUHY2aVpkNSs4alg2R2tI?=
 =?utf-8?B?Nm9WcjZueFFWMiswTHc0bmxlNXRlakZmMjRVQTRLb2hKV0VtcHdiczg4NDRZ?=
 =?utf-8?B?WHM0LzB4SUhydWRtMzlsYko5UnN6ODNHMC9oeGtCekhBVkNkZzBxZlNscTRq?=
 =?utf-8?B?aXN3YlVhMDVMblA4Z3k2RDRXRGYwUGxQbXhHU2w5S1Zjd1pPTFljMzQzcytS?=
 =?utf-8?B?YW1ZWTZVaWVXSVArNU9pSVNRR1UvSW1hWUhlcVJjTk5YMU1iZ2ZYVlFEVFBM?=
 =?utf-8?B?Qy9jdkRkUGxFbmVtYzI3MnlwUnZGQ0kwM3h0OWlVTUVJUmZIMU1DWmVFOHhD?=
 =?utf-8?B?Uks4QzRyT3F0cFhPcWxXMmJuRWdZMFl1SUZIaVZpL29ESUF3ZUlLM0E4N3RO?=
 =?utf-8?B?NVRMVm55ck80aFdSeEp3UE1HVzZhYzF2bGZwcEM2WnFNNG9raStQMitzV1pa?=
 =?utf-8?B?Mm8zRndYaEdZL3ZqMmN2TVQyaVJuTVJDYTUvTzRCN2dRRGpzM0dHMEdiaGoy?=
 =?utf-8?B?L0dhTmhmYWZCZSt6Q1EzM0lHN09ZRlpyZG1DblR4R2lxWWtwSWM5TjBOYml2?=
 =?utf-8?B?R0h1eUEzZytlUWYybUlmZFEwdXNrNmRVY0FmM1BueURGWEtzTE1jNHAwYXNM?=
 =?utf-8?B?TkViQjM4SmsxYlhLdktuQzFRVVpaYXJHZ3Z3eFl2UUJFWDJBUnB2STFibHQy?=
 =?utf-8?B?WlRDNVhZRSthbEo0SlZNZUVUU0NkN1hKZk04YzF6ZEpvYmVna2Z5SGlSbGFI?=
 =?utf-8?B?Uk9jUVNaSW5XYjRBTFNiR2ZMSHFBclMzcm53V29LYmNQZlEzRmIwTHBmUk9Q?=
 =?utf-8?B?L0F3MlBpaEdacVNjdUlKc3FjTFpZcFdMcWhEa1p2MHhhNlAxL2MwcEFIeTRN?=
 =?utf-8?B?YzMxTGk2TGdLY0NQU01jMUh1OW9UemgzaWt0M202Q0toVndMdTFHNFJ1OWF4?=
 =?utf-8?B?SGtGeFJTWjZjTDV6aGJJRFFubDFaUWFMa29PU3JTWno1SjBSMzQ0dGIrMzlv?=
 =?utf-8?B?MFJGd25wbmNUOFZqV0xvaDJZTkVIR3RmVWVCclljSFF6SGVMQTJlWHZwN3V2?=
 =?utf-8?B?QmlXTFlZeWZIV0UybC9UMmhUSEZWdVJQU1poN0xGWnkvY2hpc1RSYVhjM2Rw?=
 =?utf-8?B?YzhWaDJkTGlpSGZTNStoUW16d3RURjBxNGpEL3loSVJWeUdlL0xSS05abmht?=
 =?utf-8?B?MmVhbnBZOHdsb1p1elM1TGxYUDFpNkZqNDlOQ3NmWVN4dUtXZW9nY05LV0pO?=
 =?utf-8?B?ZWhCVnNpZ1R0SyttWHVGclVNclZDV0RzME9vbkVqbThlZEszV1AvbUVxUjJV?=
 =?utf-8?B?RDlNdVZNNTBlaFd5OWZCaGJsUEJSMXIxajNtOUdjYlh2S1A2OSt2em5nSlVy?=
 =?utf-8?Q?C409kU6/DU0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY8PR10MB7243.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R1pKdU9vK1pPR2tYNS9haXZqVXM2SUhEQXpPRUFvSXl5MUYyOEV3ZnRkdXZZ?=
 =?utf-8?B?NVlBWk5Tc1U0WFZDeUFmZWIyTTJJSjAwRXZ0Uk50dmdrVG8yU2JIaTVQZkQ5?=
 =?utf-8?B?VWx3S2R2dEtqVnB1cWNteTV3UEt2RmhBT2h2RjA0VERva3BFdEZacTlzeHZl?=
 =?utf-8?B?WGZxOVY2a0RtWjNDZCt6NktNNEZPRWFSbkdTSWFVc05zZmtLT2ZLNGZIVmd2?=
 =?utf-8?B?OS90R3RqNVh1ZjFaQ3l3elpCSWZybDFnbldTNzBOSE9uZVpVRXBGMUcwaktY?=
 =?utf-8?B?eHoxemwxc25EZ1FCV09STElUTkRFVWxiSmEvYVpXQXNrc0hWSHJUTE04aFVY?=
 =?utf-8?B?OHlhd0VkREo5V1ZVNU9oVmlzaS9GQ000WVpVYTl0aHpPQWNCN2ttMGNiTk5u?=
 =?utf-8?B?RlhLN1F1NXRCYWt2bGJmOHR1NHlwcFhsRjlaVG5seDZqQm54aE9aMndwUk1s?=
 =?utf-8?B?S21zNXV0SVVvdmhWWlptTzlRVkptbmloL1RTS2ErZmIrT2QyUWpnTndDcnY1?=
 =?utf-8?B?NHIrVTAyLzVnNDZXZzc4NXQzT0ZBUE1FKzRQQ3lIQjhkTlJrbnpVV3dab2tF?=
 =?utf-8?B?SHJ4Q0RMZ0VnVkJUV0JIRGFyb2pMaDZ1aVBVV09VSUM4aS9jWmFTbTJaZ3B4?=
 =?utf-8?B?bk00QnlOZHhUMk5qQ2w4Wk94VDZVRWF3QlpVaGRSaU80ZkYzSUExY2ZpYWYx?=
 =?utf-8?B?UGsyTFdDQXpzL0phaFRyL2RNUWF3T0o1dW5jZU1WUURKTHZGUmVXUHArRGxE?=
 =?utf-8?B?QktqVDdndHJra3ZqNXNLRjg5ZkR5Zlc1ckVVQWorNXFMQzZWMWU1T3RRYUxJ?=
 =?utf-8?B?WGdwNlBkWlNic3lsaXgvdDVvem9EM0p0TVl6ZjFhcWJOLzJwNWc3NTlNSmpE?=
 =?utf-8?B?Q0JoRStuUVRVTkIwVVpYbSs1T1RIcURwbDRFYlJMK1FkbzAwVUJUSXozbVd1?=
 =?utf-8?B?cW5FV1dhaExMbGlhZ2lDRmFRVis5MWM3YmZxNGJ6cTdtSFN3c2NiaWxTTUhB?=
 =?utf-8?B?ekhWZmxZb2lpbDYrZmh1cXZmMzVETTlReGpScVpyckVsT1NwQ2JUclRFbmFq?=
 =?utf-8?B?VXpzTzJXZWlCNmNLcndqM0dmbXJzN1NTbmFoRldhaEw3RmZrdVdLSnBtVkFI?=
 =?utf-8?B?M3dnVTdZT3NWKzcvbDhLQ2tZcWRSV1krZzhjVTNWS3dkbzhOdVZTUXB6Y2tN?=
 =?utf-8?B?UU9BUDFycW5RL0IrL0UzY2t6R1FsTUsyWTFVYmJoSmhHQUdpbGs5eTlNU2hU?=
 =?utf-8?B?RXRhQ3ltc3UzUFVrTUxBSlNkWnBRSFA2TVAweGFmc29QallqcWFlN1JhdExV?=
 =?utf-8?B?MmcwQWlSMExZZEJjUi9acTFKOENaWXN6S00wNjNmajZmOXd0ZnRqalBLUElp?=
 =?utf-8?B?V3h4cEhMSVZBbUlSY1pYRWwzZDhzdlRYV1VSYTlPKzRlZUJzUGZ4TG40Vmtu?=
 =?utf-8?B?ak1OaUJ2cnk1NHZZS0o0VkxrcGNIR0pWQVlWM09pUVJUN2l0VUlOS0xNRkNy?=
 =?utf-8?B?WjJaQ2UrMlJSSHZKMi9wOW1rb0FOTEY2YnFMTEd6MklLY3ArMXZNRFBTVXUr?=
 =?utf-8?B?cXFwUklRNUZTbnhFa1cxU3hldlNtek5jREQzZEY2cDNpY1JlM0JCalVNeElH?=
 =?utf-8?B?N0FtTHowcXlUb1BuTGJ3TThscVlpREEwWEhIZE1kVm9kTzhvNWV5aFRpb0pU?=
 =?utf-8?B?TUsxeGxNWEhDckZEOVZYMUxsTkQyV0VnMWU4VDFTTVBKTVQzelJod05PQld6?=
 =?utf-8?B?YkhoRGJaUEYxZXBxaDF1R1BBOFIyWXlxbTVCV1ZESEhjSlJ6UWphUzBnRERZ?=
 =?utf-8?B?QTRoR2FYRTkvcVF1SWdjbjVUUFlHWnIxTWRRMkxJZCtFMjg3KzJFM1lRRnFu?=
 =?utf-8?B?cVZMY3Zhbml5NllNUGxvSCtLc0VmKzJxbWJxSG0wQWE5b2RqdXhFQWNsaTE5?=
 =?utf-8?B?S05JdWo2TWpIZnEySlYybDkralRyWmpYZzN3L1VSNnNXK1hCa2ovTDR3dVA2?=
 =?utf-8?B?UFZiR2pZM3lrZmZyRWZBOEZwaFpzMkUraUxaZE5XY0RTaXJFeGZxOVdVWEFS?=
 =?utf-8?B?RkdhWWI5a1N1Q1ZkSVpFN3o5NnJoVDE1czB3azNOakdMZUZBa3NUWUQrY3Zj?=
 =?utf-8?B?VFpyYjNzcmUrL0V3Z0l6L1BGcDU0c2dyTmNMRUhnZHo0KzJiL0Z0cm03akFK?=
 =?utf-8?B?bGc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: jh8eE7O0zIQhUwbJp7MRLWV+vj9eybXEtsTgjfI1t1uIJi84dXXvo/m+KwZBZgwehAp6G4dqeS3erY+rsmD/sYUVJGHgHfBzXTEojwZWqUnGSnFm+hd2KoUtdeWIgwtuYa6BNyWgXYfNmlkWre2ert8mV2Zy3+xc92ipdvfzsgfF/CMLRew1269vk0XEAP5L35C6TuFJV3OnpAVRAvVHnVXJ02f5ErldsGnVJxjckX8zD9nl8OP6LhvUlDcY0Jdx2CZIKoB3yF2N+W4iYvKhjdFSDKR2tXbSB8yobRSbOcTtbt68JBf+RicObWeCvUiCyVMYZOZO3Ixk5I1iz78nmnPSjZmstBmLisZatvfTK3QNz8npLEDz+Ftlao9YoLEmNyGGHAXJo09UvQQt6ARp/MbmENsLPkfNHFIb11I8usTalMPrzyJ06KnQ8R6LXyg0TNjPMgH/fAkHlbpdZzSf+r/g1ZHWPuhML4tIVjCD/gI8SsWNo2Qrmbs+wjy8bKWVr67KnSch084q2k4amc5Nk7TGbQXJGnewKJ1Zp7NDbgVCfSxHDFMEOGduXBZi5WnrqG32H52mkm9tAqiKBMqH86u7KCTPsbVphDzfBE4eLb8=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65ba9234-bc73-40fe-6b9c-08dda1f138d9
X-MS-Exchange-CrossTenant-AuthSource: CY8PR10MB7243.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2025 16:19:18.5180
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PRzz0jrNePEaBDekmGMUgcbAVTtMOew5/4M4TXd4m+upF8HET0+oohq3JFhkvlWwdYgI1xU07hTmmSwGLzwCrNqGgYWShefe4MFvzm18ysg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB8152
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-02_07,2025-06-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 spamscore=0 bulkscore=0
 mlxscore=0 phishscore=0 suspectscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2505160000
 definitions=main-2506020133
X-Authority-Analysis: v=2.4 cv=fs7cZE4f c=1 sm=1 tr=0 ts=683dcf0a b=1 cx=c_pps a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=GoEa3M9JfhUA:10 a=yPCof4ZbAAAA:8 a=Ig4ASaX-K0eTDnHDiQUA:9 a=QEXdDO2ut3YA:10 cc=ntf awl=host:13207
X-Proofpoint-GUID: 2ttu_e9dMqxSOOndvQLVgRT-EmIEtggA
X-Proofpoint-ORIG-GUID: 2ttu_e9dMqxSOOndvQLVgRT-EmIEtggA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAyMDEzMyBTYWx0ZWRfX/gkJ1Zmp6lXq Q61/WQzM6zJmIlV5fvjYvbWIC4IHaNu97m0cO/BF2NAyJmybCxPaNmDp4PWrZDSLgNP8VtapU/r C8BGv5mZpxPXTWIC23cUHhDeanZsKkm/1lrikjk9QNwHhgqK0F1JDXJ2E5IL+rLeqyHg1Z89qDG
 PeWUoeBpywlAIeBxX9kmTxlUCG0cgNT7V/k6G9diq0KHa7Tr/wmDiOEHT2czXYjGw4J6Sv3geEd jlVFk32wELnrXkLlAIvkDZuhybhb71OfH7xAOmAuPa1lzaxwqj42MuG4jfO9h9Xs7MDXsfybdZy ummjFA+yEDqBwai5vxp+pfoPtBewIbOmu/y6qXi/WVlcYvKLGXHYBMsy9RSRpQLAQNiz/Zny2IP
 anEFCFPkkV1pvlxjoePyViV9Il9HbyfLYtIJhc/o8XT8rYwSoMhijPtu1g7J5hNyLe7o/qyr
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2025-04-25 header.b=Jw4JKak0;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=SM0WyW3i;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
X-Original-From: Mike Christie <michael.christie@oracle.com>
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On 5/30/25 2:29 PM, Alok Tiwari wrote:
> Correct the error handling goto labels used when host lookup fails in
> various flashnode-related event handlers:
> - iscsi_new_flashnode()
> - iscsi_del_flashnode()
> - iscsi_login_flashnode()
> - iscsi_logout_flashnode()
> - iscsi_logout_flashnode_sid()
> 
> scsi_host_put() is not required when shost is NULL, so jumping to the
> correct label avoids unnecessary operations. These functions previously
> jumped to the wrong goto label (put_host), which did not match the
> intended cleanup logic.
> Updated to use the correct exit labels (exit_new_fnode, exit_del_fnode,
> etc.) to ensure proper error handling.
> Also removed the unused put_host label under iscsi_new_flashnode()
> as it is no longer needed.
> 
> No functional changes beyond accurate error path correction.
> 
> Fixes: c6a4bb2ef596 ("[SCSI] scsi_transport_iscsi: Add flash node mgmt support")
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>


Thanks.

Reviewed-by: Mike Christie <michael.christie@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/08566ecc-e056-4331-828c-77f3fa22c3b5%40oracle.com.
