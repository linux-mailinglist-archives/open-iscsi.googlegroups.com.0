Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBTPWWS4AMGQEKF7LYTA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 760ED99D395
	for <lists+open-iscsi@lfdr.de>; Mon, 14 Oct 2024 17:40:01 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id 98e67ed59e1d1-2e2a6f9438esf5984664a91.3
        for <lists+open-iscsi@lfdr.de>; Mon, 14 Oct 2024 08:40:01 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1728920400; cv=pass;
        d=google.com; s=arc-20240605;
        b=FJcQctysGcT2WuGxfQwQGOOuSgWY7rGNo1am9+UmjAkUpuhf8T5S30RYkugwmdvSPU
         UypkKF16n3lE1BGH5mld9E10U4EumIV7i1vlBOsLe9o/NJjaoOZtWPhwhQ1H/lt1n0Ts
         J+c0FAnxpN1i05ZVGoWcD+r1Tj1Lp/+1q05H8Zr2TMgexDeTMzEiieKF0e/6GKh3fOX2
         xSvcTBe0adpydcOcEHUe4z1YNJNE5CD8aAQZjqXbx9X/qq+KojqoU61MosjfZQwBgNjr
         bYGz7aXYSQBxq+4O9fVCYieOjS0M2S7oZWrFVG7GXSyZjPImO/os6fB8ppMAx1dC6xQ/
         LSew==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:date:message-id:dkim-signature;
        bh=DTXC4mBlOxk2VD2qg89+vz8gGrQjpHHyeDIlWheM45U=;
        fh=gXNDh4pPdFdoHSifqtwbs/n5LheU3mlUqODYgpaTQYs=;
        b=IVSK2ecg7kUHhaZmMmujZwtGMRVvzV2EhMEM9wB4BMUSWJvT68JuHUsUjjRjZgjGmw
         rhzlVlPO1RR8LlBfttyqgEpD/KaWzAgayL9kwIeVOXx1Ry4vmGg3MawNYTY4WbVMvPdv
         rN0DU+FYaOoMo0wpBFbyRP+MAVJz29+nKykn7ha+M6jGEsozX4pyscd7aZ08vXzKqIit
         oxfVZjQgcgrUjdI1oejtTwuzltQDbOODKZ2U+xr8MT4Q0UYbdFky64YdEAyLSk/kVKPv
         pZLllRLdXf5P/vUJBbZ8rnRpnW8CJay77o9JeCUQNprrJ76Tu81DoIQEV+R+7pn/rpyw
         tz9w==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=VU3sBVy8;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=LEPrFj6Q;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1728920400; x=1729525200; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:content-transfer-encoding
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DTXC4mBlOxk2VD2qg89+vz8gGrQjpHHyeDIlWheM45U=;
        b=BitgfWpuBg1sypRAymUYptEHX0/zCxTlJRy/GAi83yCSJaJwF2kch8NkxR5VFSMDXX
         OQZAHi6QoxqxQgFgzFfJ5Yav2tXb8Sl5PiM+iZLKae01GrDodqTB1mXbeDnanHUZBmLW
         G1PJXgmBG+fho9T/ewWoTqxoTKXAyRyV4732yBB3r0ids+KaZzXr4zDBHiHNbt0GsHHX
         O1DpGWNuU7bq/Ha8r+gNFM7ZDeJAXffEBqpPqJG4340BDCruoCo/+3f/oujM/jHF7Hxi
         5PWCQDK6NfFfuT5dfOjTEA2iJmJoKzYRaxXFsAml8hpOUlpvA6627g5BqOwP60zO0E3v
         an+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728920400; x=1729525200;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:date:message-id:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DTXC4mBlOxk2VD2qg89+vz8gGrQjpHHyeDIlWheM45U=;
        b=l3165amk+bqVJqicv4dEuhVT9RjfntQldMRMLfnsqFDMIdLkt0aABCVhTfw05kc6EP
         yQFkEUe4bjzX4wyi/3b9JzziwCAHMtVA1WuLRbO/L/nfgvhM15Zqdz3AynVOp5FodqV3
         JlC+78N3tOM/zbCvFc4Gi+QcG5ciZihzyiorWHdsRAJdq4kmT7JGuCT//XX0xsVtsgNZ
         lIZBa1m+NTR2ltyUyDzU1wF1BY9SIXy5z5MOKcaAPMX2p40uw4TrjiBrF7iJRC1g1bJ7
         KdJiBu+KmIqdWJTqc+q1uTXjY/ajXvRMqcoDGkfRF410++OihkR7hvQDgAnd7hr7vdbM
         1Jsw==
X-Forwarded-Encrypted: i=3; AJvYcCUoJSZBhCCL1gkSv8mBEhsw1HZXAC6pzJK2bivYd+QiYx3lapHCVap2y0yU37CcJi7ruxtpKw==@lfdr.de
X-Gm-Message-State: AOJu0Yy7DDfG5WpAVdyq3AKvbeUcmtPINkFTkQuZJCCDLAV562Xt+4Vm
	TqWAPpKJCrVZjs1Mf2pBwH/dDpZhHo4/FOFcIDZCQlWkHjOK4qx1
X-Google-Smtp-Source: AGHT+IGc6bW2c90/1MeUooA/QazVtuLdKM4EzYZE0wh2KMKZwNKS2jJj0SNpEoTzpOoAxzRQlTIRTg==
X-Received: by 2002:a17:90a:c16:b0:2e2:a2f0:e199 with SMTP id 98e67ed59e1d1-2e3151b745fmr10185636a91.8.1728920399845;
        Mon, 14 Oct 2024 08:39:59 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90b:1908:b0:2e2:b20c:8c63 with SMTP id
 98e67ed59e1d1-2e2c81bcb0als3220154a91.0.-pod-prod-06-us; Mon, 14 Oct 2024
 08:39:57 -0700 (PDT)
X-Received: by 2002:a17:90b:4ac3:b0:2e2:d5fc:2848 with SMTP id 98e67ed59e1d1-2e3151b7972mr11848875a91.4.1728920396656;
        Mon, 14 Oct 2024 08:39:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1728920396; cv=pass;
        d=google.com; s=arc-20240605;
        b=hFTtyqHh37oJMgsBPLaXaXPFTLO069Ng/6LTcwQsSzqPafbVfbN91UHu4Gho44Q1PR
         YjQYrlwuIsUYHsWl2ooAmLGCuiGDwAAgJY8vt4j6+EndqJNTIh5wYheFg4WFokBQmh/l
         djfYSO+G2no05Hr8kIWHFAgOTWpySnATbDx9wcP66KaojqZFQBCsBrhlmISSVKJSEIsT
         bDVv+H4A32xfPlGSHWHDZEZQAmOlCxPX9Ggs6bVmyVjvi3vR6XgMfyFUsEsT1CjMdgdE
         sJWpwCfHZ2UOzUSoK5Gmq0hAdTbXzkUgiCSEAQSM2zrWU0XYLP25vVeTCSstp2YFQwJR
         BJCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=waEIZRB7Iy3ZTg/+S7iU6+Zk1+cFpHoKdf8YtPfnyis=;
        fh=JFsslRhVseLZ4HsXOLpu7P9IbqPH2Vr0FDomjYU7p/E=;
        b=D4L5oEnPRmavGkv+pPg6PsgN804SmSh3nh15LvHheytrGy59CT6gZ80bcQ7tmlBsR2
         taQvA8BSFQe5Tze03vxgR26pkHnUH9k5433pPINCCnY7yBZ6EFDXmzpaP6JVJvs+EqTl
         whJ93R+9P/GlUpIm076i2QI07UzSkbXva3NUUeXWygdRSUNjY97o22fzyEVC++ymnwBg
         uAlDsTdLrI4Yc/YbbyD9MOp1UfIX7Jq9KC1JaGH5ZHlwLMxn1EA2VvfxwII5RLqIgc8c
         UXJZmlu9TQurHbajGMoueXJUfwUO5s5HY6zqDHWUx5qBgKmXtzl7SVcY0KpM3mMvH5/m
         2S3Q==;
        dara=google.com
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=VU3sBVy8;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=LEPrFj6Q;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id 98e67ed59e1d1-2e2d3f64eb1si946359a91.1.2024.10.14.08.39.56
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Oct 2024 08:39:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49EEfbMv021124;
	Mon, 14 Oct 2024 15:39:55 GMT
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 427h5cew1p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 14 Oct 2024 15:39:54 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 49EEO0Vc026389;
	Mon, 14 Oct 2024 15:39:53 GMT
Received: from nam02-sn1-obe.outbound.protection.outlook.com (mail-sn1nam02lp2040.outbound.protection.outlook.com [104.47.57.40])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 427fj686f2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 14 Oct 2024 15:39:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AT8Zxw2+W/Qjj21bHyi4b7hChY1TxOnc9oC9kvldJh+qW5AMUMx9031KKRYmYs0TGym0K0P+yKa4Uf+ac4emwsGdigcCL9FYbynGYD78qfG/L+Rhpqdeturcq55i1nv/GWUesbO6+8gOXHojdftqCFZ+KyMvRcVVWVfUpFF9ZKu9fKCfwUAo6DCyMX2TYvR93gHyB3p4uIjrqZSIvApPYxRGINlG4ePHkquba8Ej5p8IjqjTBNHV4Lg/5Kjop50A+lXAltBdltCqHrIGw2ictNjaajzFstPRuftGCjvQqyeZK2TDcwmeNkYd36UaI+gwOy378u7asZvTuoJrWkIbag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=waEIZRB7Iy3ZTg/+S7iU6+Zk1+cFpHoKdf8YtPfnyis=;
 b=bKE5QDhnYTUlBAOa8OVPm8jApV0IS3VxQluWTyn7PDHMjbZD9i41/jkOuh/ZPIot+8Mj6RcfYha5iwSXAvNUgyb/k1v8UC/SCwZfaZXolmbBD6JuOUUJsfzcUXPGnM5OBeLeYwjuEtcILaPjDi/lEQlkNbfGGxC/consYjKol5pSPt65+PU9lWFl0BGTnV9o+97YOe2m2/XLeRW8vbkSssbR56tB5tOFzhf5pBsP1mZSqwmsNVXoeppS58OF8G1DRaNh+07SX0b8PC8wLp3ba6QtDQmnyjlRp3zi0yUDfgxAWAxBbfLiARCUf+XOrhCPRRs9KYgwhYWeKPtdu433qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CY8PR10MB7243.namprd10.prod.outlook.com (2603:10b6:930:7c::10)
 by SJ0PR10MB6374.namprd10.prod.outlook.com (2603:10b6:a03:47f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.26; Mon, 14 Oct
 2024 15:39:51 +0000
Received: from CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::b779:d0be:9e3a:34f0]) by CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::b779:d0be:9e3a:34f0%6]) with mapi id 15.20.8048.020; Mon, 14 Oct 2024
 15:39:51 +0000
Message-ID: <3196e13d-fc27-4883-87d7-0c6dc77f0121@oracle.com>
Date: Mon, 14 Oct 2024 10:39:49 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] scsi: libiscsi: Set expecting_cc_ua flag when
 stop_conn
To: Xiang Zhang <hawkxiang.cpp@gmail.com>, lduncan@suse.com, cleech@redhat.com,
        ames.Bottomley@HansenPartnership.com, martin.petersen@oracle.com
Cc: open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
References: <20241014053645.17619-1-hawkxiang.cpp@gmail.com>
Content-Language: en-US
From: "'Mike Christie' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <20241014053645.17619-1-hawkxiang.cpp@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: CH2PR16CA0019.namprd16.prod.outlook.com
 (2603:10b6:610:50::29) To CY8PR10MB7243.namprd10.prod.outlook.com
 (2603:10b6:930:7c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR10MB7243:EE_|SJ0PR10MB6374:EE_
X-MS-Office365-Filtering-Correlation-Id: 207e2ac8-a85b-4e50-8c8d-08dcec66714b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VlFUV05LUlk4MFNWT0Z3eHgzR3BZcE9vNkxualhDZmdqc3ZIaldDdVlCd3gr?=
 =?utf-8?B?VU0yT0JoS21rQUYrc05iNFhKZkxxSXZsbWlxSVEzenYyU3V1NnIwTENOVUx5?=
 =?utf-8?B?NW5obDNTV2J0UmhJQWgyNmJmMUNTdWhPWGxUZUh2NWEzMkdrajNhVHJSMG9h?=
 =?utf-8?B?SFlkcTRJV2tBNzJtaGZnRElaNFVqdkIyYTA2bHNaS2I5bUZ0dzVkaTlLVkhY?=
 =?utf-8?B?dG4zdDJNVmVkdzRGU3FZU000VEtzYnorYkhJQ2JjRzV2aTk4VjJkZVB3YXNo?=
 =?utf-8?B?dVU0NVhLZ1NWQnRnLy9NcWxrNC9La2REQ3Z3djEzdmRzMnRlZ0dVZndicU9r?=
 =?utf-8?B?OXpiR3Zsem5LamtNS3JCUWVOYksrUXhaNWZpODFhSHg4ZkZMTUdpUjhlWmZU?=
 =?utf-8?B?SlBUR1UrdzVScWE3V3pPT1pnODNRSk80eHRzejU5YjFOTXJVTUdjU0NDQTRN?=
 =?utf-8?B?a2s0MHR5R2NpR0o0dGFyZDBvYk9rR1pEcTN4RUIzb3NKK2UwU0dYUys0UU9W?=
 =?utf-8?B?U0ZINzJoYk5TTWZhSzVVNVhmUXhvcUFPOWpjai94SE9iWkIvcnJMWGhyd1RC?=
 =?utf-8?B?Uk1oa3MvejVjWkl5OVZvbnhkWjRnbm1QdnZ0OHFwelp5ZkdKNUFqSDVOY1M3?=
 =?utf-8?B?dCtkNEwxOTV3dEpkcjNkY1doUHNZNWxUVkJ3ckk3THhEMXhyZXR5WGFKVnZQ?=
 =?utf-8?B?b2IydVhTYTdUQ3FsZS9mMHk1U3o5K3lvcVJpd1Vhb0ljbkh3cnNaeHlGVmo0?=
 =?utf-8?B?T2pVaTBCWlIyR0R2b0JJMkE3OE5nazdPM203SVlHc0dHb1FhdXpianhrKzlO?=
 =?utf-8?B?MFBQWEpBR1RHVk03V1Q0cURDb0hVMzdqN1Vxd1B4L2NhcjhUcmRtSDk5NU0w?=
 =?utf-8?B?aTR3dldFbmEwQ2I1dXIrczFxVm5Xemk1YkU2VlVTV1FMRWxvWng4UUZyYlFH?=
 =?utf-8?B?d2x2cUs1Y1lhUSs3V1N6MmFiZVZpOEoramI5c29hazQ2dGJwOVpndzE4QWhW?=
 =?utf-8?B?NzhCVHlnK2NyZ09rNThyRHhmYVlITjFwTGR1ZGVvaVBGcUpDTEk3ZmNyL1VW?=
 =?utf-8?B?TWJhdUpNdkdFdGZuNFFKMVlYUnpxaFZ2dGdMMnIvVFBMallNamw0cFQ0ZVh3?=
 =?utf-8?B?V2F6K2Q5MnBNSDlpd3BsOEZlZUduMlcwTElSZktMVmRtL2JkRWJ0NGI4cU1a?=
 =?utf-8?B?a0xsTDFaR29Kclc4NDlyc210azdSTGNYdUJHdXlhQktpZDYxend1YUZtbDFa?=
 =?utf-8?B?Z1hLQWlZU2pCMkVTVzNyaWQ5UzY0RFMzd0hFbHFBa2ZzZlFZSzZsZDVGalh4?=
 =?utf-8?B?dW9TSG1uUHV2LzFCTllqU1EwK2ZxMCt3cUhuRXJPZS9XQjFaYm1jYzRkSjg3?=
 =?utf-8?B?UVpXbU8zNEN5aFdnYlB5K1gzeEEzYTVNYmd5YTNKcjVUN3kyb1FLOHcvOWNv?=
 =?utf-8?B?N2ZoK2hUVHU2U1RIREU0MzlMcDVMNTd5eWozRzJLOEdXYW9WSGVvZjVkYy9H?=
 =?utf-8?B?Wmo5MzNzQk1VUFdsRTZPbEE1eFpkTjU5Ti9YaXkrZWN0UjlSc0FNNTJTZDBI?=
 =?utf-8?B?MDNVNFlDaVlaTWxjWGNpR2NQWTZSNlBMWW41VkJ2UWpITWFUaDRtU3gvRDdK?=
 =?utf-8?B?NTlLOExXNWZCS3dxSXNLV3Rhbk1rUnN3akxYMndEWkhOK3RPQkVRT21GRENk?=
 =?utf-8?B?aE1EN1JuWjU4QzRnbC9DZlBaVElud2FRR2s2anl1YjVQYWJpU1k5VmFRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY8PR10MB7243.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eHV2WHhCbVZEMHo3eXZvdlhCRUNONk90RWhGUlhnU0czQnVKQU56VFp5SXNQ?=
 =?utf-8?B?TVcvZUxJTDJyTC9nM0VDb1JUbkNBTFRzUmZKekYwdXBNa0YrUjM0NVFVM0Yz?=
 =?utf-8?B?RE9hbFJjNCsrYkRweWlzZHNlR0QvZEFUdENReWtIdEJVbDNTWUhFTUlUakE4?=
 =?utf-8?B?bUZKYSt1KytzNnNLdGlqa3N5M2ZyclVXVEtHL01nOE5BcVhaS3JrekJVYWJx?=
 =?utf-8?B?OGs3SkVYR3dUM0tTNGFKcnR4UXRUcFVDQWF4WEFtRHRiUUhET2xjUlZCdXhu?=
 =?utf-8?B?ZEFaQk9OMUdkTWJKV3NtVkwvdUJON2NjMGZmeGFGRTBiZUxNYWw4M3p6eTVi?=
 =?utf-8?B?R21hc0xSSUxneDM1STUrUFdwbFcyVndyVnA4NEZreTB3eFRwWHdDRDFhMTMz?=
 =?utf-8?B?amNxT2ZSdEJ3dTllSnRrVytsWUU1WU5Md0gyOWhqQXFuQ3Q2aTNMZ0l2Qkx3?=
 =?utf-8?B?R2gwSk1HdkpMSmpvS3hxeXZaUE9MNG8yQ3daa1loL25xeFBRU2NtdWlqY1pB?=
 =?utf-8?B?dXROTCt2NUhrR2NZNHNqd0RzUzlhbS9EbndHUmpYQURnd2psUVd4TlRaNmJ4?=
 =?utf-8?B?cGdBM2dRb3NEVDBFTUlKRHU5YUVjTXRLRGd3cW0ySkl0WVcwOER0dDRSbW04?=
 =?utf-8?B?UU8yTEtxMDE3WU5CbEk5UnFnaUMwamd1UE51NjduQlBaL2Jua05BWk56UTQz?=
 =?utf-8?B?SGoxVFpicUlDdmFmU0d6ZGZSQ2F5VUxHd3B5dUpldnpWWmJtU1RWZHFiN0Er?=
 =?utf-8?B?cXJyZ2dIeFpnek1Mb1UrRmxJbFFxMmtFWUNCYXpJVWpUZXRaWWJnYnVkMStN?=
 =?utf-8?B?UlYzZ3BYQkhuUDlDRnlYTktPWlZpdE9yMVhkZzZpdFNodkwwczhtSVhJbFVa?=
 =?utf-8?B?d0VFMEtSWkExOERCNzlVOTJTM0kxd1pIZ1Z2UE9nTFFaS2tNRldtdGgxdXhY?=
 =?utf-8?B?M3ZnMVh3Uml5YzBWR0ZGck0xaEhYcXptbHA3RXNRdDRKbkdYV0g1RnBUWTBW?=
 =?utf-8?B?UTVVQjBjTXpXbWU1dE9kMFdMUERnNXErZzkyb3hlRGRxWjVaTFdHSEZQamhH?=
 =?utf-8?B?OHBwTEhqMVdLMXZ3ZjE5eFNjR1dTbDJLRGZnV2hZSGpXOHhzZFlWVS9kSk81?=
 =?utf-8?B?QStQdzB0WmNJbzJyalNvNExrWVJLTG5xUUY2cmx2TW13UWprYmErbVBMUnFm?=
 =?utf-8?B?dXJJNm9ldWl4VDU1QTFlWUZLNlJtYytuQXBrSHVKV1V1QWoyVkxpYWVBdmdt?=
 =?utf-8?B?Y2xZVmsrQnYxVCsrVUNNSmdaZFdCekZZbTdHSkxoSkVzMWhEaVVpbUhlSG9N?=
 =?utf-8?B?cFZtRC9IUzQxaHdQSWtCZkZDNy8vWjZ1aGNpV3M5UEZTRlJ3UEcyWk1lVmtn?=
 =?utf-8?B?c3QvUkFleTNUcEJsakVpN1pMY3lMR2Zncjl6TFEweHZVemg4UVdkSzMxSnBO?=
 =?utf-8?B?eDZ3MzFUL1paUkI2eHkvRnJvdmRTMTQreE8wRmFqaXhiazhsT2ZJUEN2SjBM?=
 =?utf-8?B?THhleWh3dGh3dFpIZE5PdkdJNVRVUG5QL1hGemR2Q0ZuOWt0T1A4a3JwOWpB?=
 =?utf-8?B?YnQzVnNCSDlpZVRVaXBaQ2hEM0FkVGtOdkVid2NDTzZtYk9MemR3bjZXWjdO?=
 =?utf-8?B?R1hMQmM3czMvaVhza3QvblVXbFdKbFJOTmdsQlNSWkV4T1dsQWE0UzhRRm9E?=
 =?utf-8?B?TmFDdzFlZ3JNRDFONGxjcDg2Y0I5TmdiVSsxMEdkWklDUjJLVFd2OXRkbEFT?=
 =?utf-8?B?ZzIyMzEwTWZidVQwVFk4R2E3UlVGR3BFOXpIc1JNNkl3OEc5QytOR1VNajJ5?=
 =?utf-8?B?QlVWWW4wOHVoYVZHSU9JL2pwREFON21Nc2s4Zkp4dXVNU0dWSGNkK1pUVzR2?=
 =?utf-8?B?empDOHg5Y1Z4ZGxIVXMyVHdXeTlNQVJsTWwwOTErWitkaHVuRlAzN0EvZzBp?=
 =?utf-8?B?dlFwYkEyajN3a2FzZFlFN3ZydmRHUzVNMGlXckxNd3cxa1NPM1A2RE1yQmlm?=
 =?utf-8?B?dCtlajlPNUplYTUrQzNVQTJIbTBoLzRPcGZDMEhZcjRzTmZtajh2dStQY0N6?=
 =?utf-8?B?Q2o5WS84WDhJMVNZN211eHk3dU92QVpXK3NRQmZBQ2h3LzFudFA5Q2lsOERG?=
 =?utf-8?B?ZmZDTWowVTFMdk5vd3VQY2JyZmNsbzhrRFZ1SzRaN3l4MmtIWUVsK2VJMXVu?=
 =?utf-8?B?Q1E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: wxzOkpvv1kNc9+cySNgxS14cpbHrCor29oHogO4IVIaCyEM3KyzGjR/xhoqa4Y6xNDquI9OLAhklYncslZqG/yKlMVNiNHpky60tP7L6y6MqAd3QvY42kh1hdfVLUrNcOaSgpDfSDcEWklZUBbQlUcF9N1BHEFbTGLl9QL5Ed28gWo17uAMfa2DQ8GLnV91/ivuz9vwWZXReWaAmlcKU0gDX/hRkRZg88C5+KY0qHZKXk7ROebKCcAusvESKy+0M7e6p6xlwbLNnTrzGFMOrtzisOw0XpV6q1rFAXo9RV69G1fGOtPD8SFVUe4NbIcXxUybM8jHpGCoHGVAPWyCkjZMOoiKJrB2KhPtK7EBmjkQpHrVRlqJg1ClJOX5HKKC5pEY0VQl47qbhYJY9h2lk1X0c8CSbJ3QMDFz9C6QOa7tvqDDkSe/8Kcxv72nwVltZWSYa1hNjZ6q9wLz5oI0lZ1zLQtWC/RHgH4J1Fk2zhZYKw3coRJB0GbITa/zB1VNBtN5bQx7oh0n3SvTAtpZW6V417XGyAZA9CN997F+ssZYU7r4NwanseFSeDuzwUv/Anar3MtygFF9xGTJHEJBfnoitFN3GWrektGREKdoXy6U=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 207e2ac8-a85b-4e50-8c8d-08dcec66714b
X-MS-Exchange-CrossTenant-AuthSource: CY8PR10MB7243.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2024 15:39:51.2708
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FH/0uPqXJCODxF+vEufQ9cZbXWZWOjJdt1joz4kF5ffyA3gvghwxX97J/ceExthOGJozFSz8CTqYLtHdfg3w+IQGmx4TNxVBrpqJ7hBOy94=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB6374
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-14_10,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 malwarescore=0 adultscore=0
 bulkscore=0 spamscore=0 mlxlogscore=999 phishscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2409260000
 definitions=main-2410140114
X-Proofpoint-ORIG-GUID: 7p5vIy8gX3uhmaRy2mfqpkdfDka92J2Z
X-Proofpoint-GUID: 7p5vIy8gX3uhmaRy2mfqpkdfDka92J2Z
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=VU3sBVy8;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=LEPrFj6Q;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 10/14/24 12:36 AM, Xiang Zhang wrote:
> Initiator need to recover session and reconnect to target, after calling =
stop_conn. And target will rebuild new session info, and mark ASC_POWERON_R=
ESET ua sense for scsi devices belong to the target(device reset). After re=
covery, first scsi command(scmd) request to target will get ASC_POWERON_RES=
ET(ua sense) + SAM_STAT_CHECK_CONDITION(status) in response.
> For command's response coming, according to scsi function calling: "scsi_=
done --> scsi_complete --> scsi_decide_disposition --> scsi_check_sense", i=
f expecting_cc_ua =3D 0, scmd response with ASC_POWERON_RESET(ua sense) wil=
l make scsi_complete ignore "cmd->retries <=3D cmd->allowed", fail directly=
. It will cause SCSI return io_error to upper layer without retry.
> If we set expecting_cc_ua=3D1 in fail_scsi_tasks, scsi_complete will retr=
y scmd which is response with ASC_POWERON_RESET. The scmd second request to=
 target can successful, because target will clear ASC_POWERON_RESET in devi=
ce pending ua_sense_list after first scmd request.
>=20
> Signed-off-by: Xiang Zhang <hawkxiang.cpp@gmail.com>
> ---
> V1 -> V2: Fix build variable 'sc' is uninitialized warning(Reported-by: k=
ernel test robot <lkp@intel.com>).
> ---
>  drivers/scsi/libiscsi.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
> index 0fda8905eabd..f6bfe0c4f8a4 100644
> --- a/drivers/scsi/libiscsi.c
> +++ b/drivers/scsi/libiscsi.c
> @@ -621,6 +621,7 @@ static void __fail_scsi_task(struct iscsi_task *task,=
 int err)
>  	if (cleanup_queued_task(task))
>  		return;
> =20
> +	sc =3D task->sc;
>  	if (task->state =3D=3D ISCSI_TASK_PENDING) {
>  		/*
>  		 * cmd never made it to the xmit thread, so we should not count
> @@ -629,12 +630,12 @@ static void __fail_scsi_task(struct iscsi_task *tas=
k, int err)
>  		conn->session->queued_cmdsn--;
>  		/* it was never sent so just complete like normal */
>  		state =3D ISCSI_TASK_COMPLETED;
> -	} else if (err =3D=3D DID_TRANSPORT_DISRUPTED)
> +	} else if (err =3D=3D DID_TRANSPORT_DISRUPTED) {
>  		state =3D ISCSI_TASK_ABRT_SESS_RECOV;
> -	else
> +		sc->device->expecting_cc_ua =3D 1;
> +	} else
>  		state =3D ISCSI_TASK_ABRT_TMF;
> =20
> -	sc =3D task->sc;
>  	sc->result =3D err << 16;
>  	scsi_set_resid(sc, scsi_bufflen(sc));
>  	iscsi_complete_task(task, state);


This should be fixed in a common way like I mentioned in the other thread.

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/3196e13d-fc27-4883-87d7-0c6dc77f0121%40oracle.com.
