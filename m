Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBKHUWS4AMGQESLHFO5Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D02F299D348
	for <lists+open-iscsi@lfdr.de>; Mon, 14 Oct 2024 17:35:08 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id e9e14a558f8ab-3a3972c435dsf35506015ab.0
        for <lists+open-iscsi@lfdr.de>; Mon, 14 Oct 2024 08:35:08 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1728920107; cv=pass;
        d=google.com; s=arc-20240605;
        b=DcPD+ZOITKniXIsWSwqLKnRXPXqYj9sHkwAdWz2L2riLI5rFP71ZwLAkUSDaGFnmCZ
         r163aOsh6sGCKFpIYzxtp21CFxQ5ARR8RQS2NRisl0d5xLcF60TAIA+Q7urikA0SWBKK
         TCGbiv2vslEbfsEnMifwXvF/WCiJUtnDT7Uwd12OGb0oCo76YcEYMXAF9HVCJCfPQ/ai
         mtfw5ER4q+GlbMs+cFnb+6bmxUGvbX9KQj43yy3iSd05Xfhpi1EVpY3aTBxqc97wNSmw
         mGzqj3yzoK1yKrjyeUAaKrfCVhcNUIRyNXkv9QXMZypw639UOakOZG0SijxyF1LPvlwG
         xZhw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:date:message-id:dkim-signature;
        bh=BnFpLR2sV2WPlp2ZL0tk+zoTf2dMx57ysgJiZHMMJBs=;
        fh=yFeTNtDT4jiKxUJ1kbU5rCFs2iiASkRg1vZgCFGYwcQ=;
        b=luvkttOYFcsUADMhxr6XAhijlRPp6IlxwQhbCFN+74uUCiwa+NUT9PCE14d1WAYcuQ
         oJdUL808UksjKNRj25w6oIoRo+Gvxc4EyC8nLeljMAhY2gBGlf+4LCN382B8L0yc5inZ
         Om/tgFzByiIWRigyg38e/Jr67Di9CpvLeKjx3ObM1UIixy3KMp/TYYqZo/8KwpXicrrX
         ZhUqC06/IDdqAwCEUbsB3fc8T98GaYVwIYVdLnMsbhXR/kKVbyrvIIicWvD3bUPoaoxr
         BTd7LOU2B9vN2jsmPXnUfl3Qjvn5a+wDWxiTPmDrGYOeSA9dMipYw9YXxuHVfPBatOpp
         QP/A==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=WtAptGd+;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=PKFEsT42;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1728920107; x=1729524907; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:content-transfer-encoding
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BnFpLR2sV2WPlp2ZL0tk+zoTf2dMx57ysgJiZHMMJBs=;
        b=Lq/ahDPnBxTlxQZ70BY7K1ObaJ90Er4P5T90e/gGkaN0PiEICNtpGGbaE4Y7y64Yag
         CtP4Bfh7GeABPZF0ad04xuCpJ87qdWRs0GSBHPS8fbu6xp0gHtXXq9YJ/LIO3H7plbi1
         i4mK/GpWAJOY/tAisEzLeoBd11alqGF8bwSoXGZwtvdRIAvdZtEawa992bTzcoc1Ol5G
         rqmmosT3ymZvxMuL+snebg2aAok26Ww+EX8Ipz+LYVCzIVD/sO/uRTvmQ/V9+L4sSxmc
         Plbr0WMm3t/AeD2yDnGlbz52qg9MI2FzyzNVvTKQ0JTdfKBMwsp1NRhikRaT3OM4qixq
         gOPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728920107; x=1729524907;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:date:message-id:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BnFpLR2sV2WPlp2ZL0tk+zoTf2dMx57ysgJiZHMMJBs=;
        b=hgs3xS+Coj92UWTEk7BAGHNco8ZNdC0kyBz/Mg4h5D7bHtrpgzAUGe2qnxsoameBlj
         PCxRqkVmi1LPzJpzFi4ANlRJPm1bwTVHxD3ObKEq2j4pzUt1rcgYOA0kXMuBKBrFZGmR
         pfrgTCmvjmp1etcMiqOcsTLTT3b16k0eJ32p7lVrd3RRiEVUPRtlAz5u0SwhV7KnvNXD
         us01C1tfKjRuIhQlRUTSVlqD7TpeSrEWlN6SXvSPh8QVpyiDlhiqJXUQXyCl3A5MA/RR
         Z9XiVtCQDOFlxEEkNDRWrYqC76prJusHNGLVlfLsJuaogOidO3Nn9k+xgpM/5XczHygP
         7ung==
X-Forwarded-Encrypted: i=3; AJvYcCW1cvjoC+orTIcseJA7ZBsHPFxDfh8aFfldbQrF4pPyvKDb+c8J2EzUXlEEbUGiG4zRVaC3pQ==@lfdr.de
X-Gm-Message-State: AOJu0YzZeXaE2DO807PKXcJX1BdURzGjbJZshGjfthW/zc90WhuRk81M
	zNFqHKUo23PpIo8BpOj8G5guLdFE6bRiTvl2nBqH0dERSQpP0JoX
X-Google-Smtp-Source: AGHT+IEl64Qv3iH6YNfjymqWpAaHetEd0W8CneO9SM+kT7cJKCvv+b+EmLvCGFu+QRhEHOR6eEZCeQ==
X-Received: by 2002:a05:6e02:20e9:b0:3a3:5fad:77b4 with SMTP id e9e14a558f8ab-3a3b5f233d6mr105489685ab.3.1728920107241;
        Mon, 14 Oct 2024 08:35:07 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a92:c24c:0:b0:3a3:9c22:3a4a with SMTP id e9e14a558f8ab-3a3a736d09cls3050775ab.0.-pod-prod-03-us;
 Mon, 14 Oct 2024 08:35:04 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCUPrKV0wPvUo18cEiGklBXXOfMK1YQLf/HdSQuwva64S8YC4McIxUPUY4blzGznMr6Onq0ocMSd+if8@googlegroups.com
X-Received: by 2002:a05:6e02:20e9:b0:3a3:5fad:77b4 with SMTP id e9e14a558f8ab-3a3b5f233d6mr105487285ab.3.1728920103925;
        Mon, 14 Oct 2024 08:35:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1728920103; cv=pass;
        d=google.com; s=arc-20240605;
        b=cczwgocXHv0ABM5k0yCRJPhnsHSGWOBMO2h1dJftsAtRDebbxtP062xsr+n8Rpo7tt
         UPpVS39+TvWfVdGGt6O5jD7Yvy5eeEVKtxHPdi4wkebiDYcMUaKEVBM00wN+e0HuKd7+
         TsEtDUSkM1G1vxTkJRzMIlPhqVfo0ev4MBt3YMs68OoqwCGz4D6OM1+297c+GIAN1E4f
         ooRq2hA8HltDBdOXGOTjdV6v2Wli1HOjpK6atJRhUOxfctqKvpfb8FtcfVgSV77f3cIu
         QP9mE6PHhyTbPhyGVEMcnz6o80c7XBdDITgNqlhEE91t9uO21/vBoKxnoUT/WOGhNDHI
         bp9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=S9o9fZhsw3K5ObJDQuSO99Hebr+iRorQITHMwRexDn0=;
        fh=MZ73h59FtUsGiyaFOo4okTgcujyXxK2cRlStVKIrzEU=;
        b=cgKLCNyv7iiXMnebXvRzChxrOPCZtn8s0ozOb2hR0GrBy6v38qLqfLrlz6N9rQdvO5
         pu7d1ZGqn94mTbK6npNgOcfgNE5/I4rn3b2DlrWMn0mFq+eTZHbJy9ruJ+HexnGukaXR
         6ggJ/9jTAj4+nyrvq9iPelk1IqlBoK3G4Gqs97wTHu5HuXqDoZ38K7x1bASifyazEAdE
         R3OLZfNXB5DvdTRKt9m8tuYnuQP47Xr6En+HmEtjX5qrVuttHU2bignULI/7zrnLkEhR
         XodtP1It66/bvm25hXS3sxcMZcIe6/QroubYpOV1nLRzGEeJE/yxgFjgHeqYomMBAHqJ
         HFrQ==;
        dara=google.com
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=WtAptGd+;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=PKFEsT42;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id e9e14a558f8ab-3a3afdb22a2si3327525ab.2.2024.10.14.08.35.03
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Oct 2024 08:35:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49EEfahu008445;
	Mon, 14 Oct 2024 15:35:02 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 427fw2eq5j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 14 Oct 2024 15:35:01 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 49EEOT2B013984;
	Mon, 14 Oct 2024 15:35:00 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2172.outbound.protection.outlook.com [104.47.59.172])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 427fj67n17-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 14 Oct 2024 15:35:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QPyLr95cB8A2KxkNHe/tykHHoEX3V2bqdjYR7BHg6ypqBtn8az91XiRqNPmeD2vWynzYbo08NUktvSiA/yQiSeb1E3e7WKBWFn/OEDUHPKO3iIxAl1FpAcs+xqTvaLWfpEwS2umPMaLGaxWm9sIbZFsHIVvy73bCa8kvBmZ+3wZrp9EhPCuL9mI5Ws/uTZswwYuS6797/291vLHmT6LIMH9ODo+/YrQL1BE38Pi5b8MNMsFBcuaJNLF1qWJFN/bI8P+J/x3Nb5z4+ICwTTWn15v0lowMf+Kzt0FgoEUP74GrUWOvQGfBxG8FUrCRy7WOPv6uT+XmNwj5XI59ad3E7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S9o9fZhsw3K5ObJDQuSO99Hebr+iRorQITHMwRexDn0=;
 b=fr4xKoJym8zlXBzhhH0iJZzsB40BXMln4i/7hz1WO6RlBbeRFYgtkjs/55pkqE5H4uNERM1TjBmSDlBbkBTcAKwSNIwCXn3ghjoR/E5TdUvsPkHMshQvRDGPIUFbwPG8OEwz6c39XyEug6KDQJeoOe/JdmW/wE1YeY5hvGsDZ2FqOfoTBbivjnHNs8GsfFUljOL+oCgvhP4WXAVzphpXvqPuBJTGtlBGG8j9hCsPJWMhIoOuG56fxVwJp9YnycFSCLEEkc0NQOiVndXPmiADX4z5YzXZQNLtvxkvxb1qU5+ZhP+Q9lB/FegSmIPZ/j5Rvm6/UQM0fx5SpO3RPAjGGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CY8PR10MB7243.namprd10.prod.outlook.com (2603:10b6:930:7c::10)
 by CH0PR10MB5003.namprd10.prod.outlook.com (2603:10b6:610:ca::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.27; Mon, 14 Oct
 2024 15:34:58 +0000
Received: from CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::b779:d0be:9e3a:34f0]) by CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::b779:d0be:9e3a:34f0%6]) with mapi id 15.20.8048.020; Mon, 14 Oct 2024
 15:34:58 +0000
Message-ID: <c84560d6-e6e2-4a88-8525-9193854f636d@oracle.com>
Date: Mon, 14 Oct 2024 10:34:56 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] scsi: libiscsi: Set expecting_cc_ua flag when stop_conn
To: =?UTF-8?B?5byg57+U?= <hawkxiang.cpp@gmail.com>
Cc: lduncan@suse.com, cleech@redhat.com, ames.Bottomley@hansenpartnership.com,
        martin.petersen@oracle.com, james.smart@broadcom.com,
        ram.vegesna@broadcom.com, njavali@marvell.com,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241011081807.65027-1-hawkxiang.cpp@gmail.com>
 <ead203fc-abf5-49b1-b34c-64b97d3fecd6@oracle.com>
 <CAHmG-mrmBYuxNOTVg+QUa6264isEwp53awnAcGGRwEU2bNSV3Q@mail.gmail.com>
Content-Language: en-US
From: "'Mike Christie' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <CAHmG-mrmBYuxNOTVg+QUa6264isEwp53awnAcGGRwEU2bNSV3Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: CH2PR08CA0010.namprd08.prod.outlook.com
 (2603:10b6:610:5a::20) To CY8PR10MB7243.namprd10.prod.outlook.com
 (2603:10b6:930:7c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR10MB7243:EE_|CH0PR10MB5003:EE_
X-MS-Office365-Filtering-Correlation-Id: fcf83e24-e8a8-4ab0-38af-08dcec65c2a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WnlXOHZFcE5jZ2pKU3RpRDZoZFRFbXduYWNUZkk2bm1kdEJSNXFNWUVLakUx?=
 =?utf-8?B?OThEV3Z6UnoyWmdGS1lIem5BUUxLd2Y5L3lZNk9meDNuaTExd2t1MXBVb0ZN?=
 =?utf-8?B?QlkwMEF0a05TWE53U0JQM0pxeEtjMXg2Y2JIcWExL0dIU1RzcGVZeVJZQS9B?=
 =?utf-8?B?dmdHdk5vRGtIZ0pVdmlEMW5FYU9mWXI3R0ordEZZb25uUFM2VlJ6bzVSS2ov?=
 =?utf-8?B?REFrbkh1ZFNDb0VXY1pqY3JrbExvTGF3cWNYNU1iQXJoN3RUQWZkZS9xMWlF?=
 =?utf-8?B?d0VjSTQrNTVLVlpsb3NoeGs0blNJNjRHd2hIWkZxeXdVQWlPWk1nU1lmUysv?=
 =?utf-8?B?bUpEVW9JZzVHbElKcnNDSlh5UlVwV2ZZSkp0TU5TOGs4aXpnMVhtUXVWYUp4?=
 =?utf-8?B?cDROcmhrVHV1RW1SWFZDYkxpKzFoalZuTXk3ek5Vcng3QUZ4RWtYbndiWkNo?=
 =?utf-8?B?cGdicndJSi80YmMwWVRyQjF1dk1OZFNDOGI4aXVsL1VROVEvQjJvbEF3NlFq?=
 =?utf-8?B?TWhHZFN2aFhzbEtISlQrRU9GbDVjU1VmMDZHVEdFdzVxaUxxRUEzcG5zTEJ6?=
 =?utf-8?B?UHFFakJmWVF2djVhcVFiZVNCK2NvNmRSZlZJYzR1WDQvQlVZamEvLzc2WURN?=
 =?utf-8?B?NG02T3hFMUlLWVpQTnZ2RTZXYWVXczZYU09kQzZVZmRQOSsrOVRva0REYm1h?=
 =?utf-8?B?aWIxellvNTdBZWFDbVlUUHhWYXJ0Q3ZCblFxUnFqN0VGOGpZU0c4SEN4eUtE?=
 =?utf-8?B?SmZraUltbzdIRzlObjJvaE1mZURkeGRCekE1MjY1cUJ0Z0gyMnN4Y0RYYXla?=
 =?utf-8?B?U3Y3Y2YzQmNTWHRvQUw5cXZZWGIzQkROTWJhQXp3YUpteUxmdWV3RjJlS1NF?=
 =?utf-8?B?dFZDWUNUeTd4TjhldDY0T1ZjdXRJZlFZa3g4RW1kQ09BdGJLTUhKSW1oajY1?=
 =?utf-8?B?Wi9UUGtlbGlQalpNYnM0Tk1zQTE1d0Q0VGdOeXV3RzJzajFyTnN6d0Q0aGEx?=
 =?utf-8?B?L1pyK2ZIN2N5dkpnZU05ZnkrRHc3MGUrWXhqNW95VDkxSU55ajBCVFJOWE41?=
 =?utf-8?B?b3RmWEtHdjV5MEM1SnVveFFBL3NKSmNwekM0VDkvbGlrelNGSFFUOWVieERw?=
 =?utf-8?B?RGQ1MkNNN2JwY0dNcDhRVmtudzROR0t5bnhOb2lhbnJSL01pcENpNDIrSXc3?=
 =?utf-8?B?NDhyY2ZYSmNIdXJ3YXNjTWw1d0taZUs3MDQxbW1yL243TFhMTUY0dGxoeWs4?=
 =?utf-8?B?bUhSazhWcW8wTzJvdk1YNzZqMmpQWmx3Si82RXhHT21mcGt4R0tyb09lbW5K?=
 =?utf-8?B?dkM0ZEZxSEEwdEh5Z0tzVGpYNGNKT3YvVnM4TUNnOU5CTG1rYjZoT2R5Qm5i?=
 =?utf-8?B?TEFrNjdieHl1YUkxTGhxMlhVMHVWM2ZyV25sL2VHd3VXQUNad1hwVUR0dDFj?=
 =?utf-8?B?Z2ZOY3RuL2cvKzVKd3JKc0luNzJlc0xDQnczN2FaZkw0cG0yQ21pWUJxYlNO?=
 =?utf-8?B?SEVyalJrdXlrdm5VYkF5QVgvVGVTVWtzbWQzTGdVOWV3SlliZEFaem9jWS96?=
 =?utf-8?B?akpUNVRiUkxNWDgwMDZtZEpnZlZnNVordGw2WTZDRk94Q3g1Z2UveWMrNGls?=
 =?utf-8?B?Vkg1eFdvOUV1YVg1Zm5lcDJQRC8vcHdFdzAxcVduSURIbXZQNlNwTUFYcUV6?=
 =?utf-8?B?U3c1SHNwbUNjSXJnZ3RGQWQzWTZWZDdrczlKQUFpNFVIRzUzWC9XTmdRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY8PR10MB7243.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?anR4NWVRMXpWUmZ5SVY3Nm14dUU3djFjYmo2Mm5JTTRjRmg0TERGbDN5dEZT?=
 =?utf-8?B?em8vV25kTXVtS0xKV1VDdDdsZXBXUSttaHk3K04yK3RENUF5N0FOQnJrYVBr?=
 =?utf-8?B?US91OTkxbjlzZ0hpS3hVMVB3R3ZYWDNlQWR3aFB2akFIRzJ5dXhnaGRySmlR?=
 =?utf-8?B?WDVaNWFrUURvQlJqakhvS3N4QnJvaUZlb09uT2k0MWVGaWYrcWlTMUFnTlFT?=
 =?utf-8?B?aytHZWxNM0FnRXk3NDNIZDc4QjRERzlEV0dCNFl2NG5CMWpjdEdOWW5VeXVl?=
 =?utf-8?B?YWpkNnNEUmlHOUdldWNBbUJ6b3FZSTVKb1ZaSjZsVlM2Qi9wTUJZb0hmRStN?=
 =?utf-8?B?Zm9uU1BSNWZOVDFDOTJDQURrcFNqWGpxU293RVRnUStnMEI1Vkw1dUEwdlB1?=
 =?utf-8?B?V1pCVWp6c2NYbDBvUkIxbmxtRGpaTTVObGIvUkoxdDBIakorTDBsL1VCdDYy?=
 =?utf-8?B?RC9YTW10SDU3VjBIYUFhbW9sM1RpSjJzd3QvRENhUVNWRlJqV0JEbzc3RFBi?=
 =?utf-8?B?Z3hLVUVITXhuZXY1KzYrZjd5eXNvVnJwU1NQSHNmcFdjZVIzS2twaHhWNllw?=
 =?utf-8?B?Z2l6WjFRK0loUTZNZTlYak93VzRBNWw4UldTUGIvbGFLTENDUFM0ZXhTM3J1?=
 =?utf-8?B?aWFORzE2TUhFWEJxVWsrY0FQcjVtcGkvK2NoVldmbE8vWFc2Y0dibEZ5UXhW?=
 =?utf-8?B?aTJFNzNwdU5FdmtESTRkazNuR0NzVmdwbGkvNzlzWXBod2VrV3FHZGdwdlVH?=
 =?utf-8?B?eU5KOFdCZ3NhTEk1WFlOZUliRXZHcUI4MHJHazhROXZYTXJQV3pVNWoyYi9p?=
 =?utf-8?B?S3V6TVM4Yis0QXdBQTE1VXJqNjZVbnhQQ3BFU21vVWtka1QxOGNYWDc2L3Yx?=
 =?utf-8?B?dXZnc2Nxdm5TZFM2ZTRhK1gxK3Y4UkdUNm5HQ1ZJUTE4S2I1UmlvanFVeEFW?=
 =?utf-8?B?aGU4NXF4MnVkVGhHckhBVW9lcm1iOGl5UktIYzZrTzdlb05vUzJGVk83REFl?=
 =?utf-8?B?TURqaStTK3FWbGNUR1laWW0wdWRQMnVyYnFKYithYkpvY1dEVjFXVzViVjYw?=
 =?utf-8?B?L0VaZ09vbHExbm96SEVkZlFHMUwvSGtMWUttM2kzaURoU3d0dndyMGRlb3do?=
 =?utf-8?B?c2dHcWJXUWQrclh5cVFHNzlRMmxpaWZWbzlJNDVjVmNyZnAxa3pGM0ZhSGh6?=
 =?utf-8?B?eWh5Z3c2N3Fmc3NWUkg2K0FvUEFRZUZKaDhBaXJlZU96eExzdjBtYmFKcmVW?=
 =?utf-8?B?b1dybHNoZDNhczRta250YWlSbWhqbUhJYTUxWTloNVVGZGpraCtZV1VBMWkv?=
 =?utf-8?B?VlVCTU94Z01IdktXNGxuN3J2OWFXNEp1ckMwTC9pRVhQWGZmT0xESE1UVlND?=
 =?utf-8?B?TTZyV2l5cUtpUHN3Ky92MGVkcjhVRkJRUnZnQTlXTXF2ZGtnMDZ4NStBbjRP?=
 =?utf-8?B?b0x6M3ZCeFc4V0MzTXhnUDlNY096aDJYV3pHaDlXblNnVEJYWUhibjUvWjRC?=
 =?utf-8?B?aFMwT2JlL3IvRlp3aU5sSm1oZXNldytVd2hDa21TU0c2U3dKemFBOFNOU1d6?=
 =?utf-8?B?ZC82bmVkcWsxTXhpZmhsRCtYZ3VzSFBDaGl6QXBNNUVaekwxN1BOVnJLcVBn?=
 =?utf-8?B?NG5qc0JGandGdjhDcXhsREZiaFNydFE2WkhmaWZUZ1dTQm9VY2QrNlcyaGIw?=
 =?utf-8?B?SFBBRDVwSXhsOENleDBhRy9ROE9YVVhzVDBnTWk5S2kxSDBGNWtPVDJjWFE4?=
 =?utf-8?B?TnRSS3N2SGpQWEZ5cnlyOXB3bWFrMXpMdHdwSWlpNGxaTmg5ZGN2SUhSaG83?=
 =?utf-8?B?K3lSQVg4REhyeXdIMlY2Z0JrcUhhUFBpc3doMnZrM1l4SWwwTGJqaE5MWFBV?=
 =?utf-8?B?ZVhDMDRkWXN3QXc5bER3ZEtCdTFEWEdCWHJrTXF3WjZWSTFnKzZEVEFUVjhB?=
 =?utf-8?B?S2gwWlJlaTRLdVk3aFlibVpMUFJ5L2FHOGt5RXEzdjhqd0pwUXVUMlRzRk1P?=
 =?utf-8?B?L3pJRGJzNnUrTk16MFJtZGt0dG80R2NlbVdTeFZpWTNSN2EzY3BwSEhSREI3?=
 =?utf-8?B?N3NjdkpGcnE0NVlNaU9Pa1d6V2FQbFd0SUpwRStuMlQybVVhWGlidTRhbUFP?=
 =?utf-8?B?UndCcDFwOUhYTXpubmh3dGhQNW91YjJpUCs2V2NQY09TSzFmRXJFWEIxZG00?=
 =?utf-8?B?cXc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: dsQZ21SND8eOZexTJ46hgWJRg3V2XWaWFStZWX3EEececSsjQKRkTdLn6OYMZzCbBLVC7yo6RkNUiQFlyPtliBoHrF5kwBBc4/5kPFj/X4n3VxRFJGcIdMM0Z/u7XjuIpQCxhCRJKn6qqKmGnMfhXSg2bBn8TFR+cxNJy6i/WcIioeYM51fJKxy8FXKXtm/1gO3cM64237fCLh5E4aAKu88LeSXs8wqrxdfYvPFJG1crO9QhvVx7herELankW58azmnycaqFDBe9TrjIv92QxifnJWRKqhkeE2SjnmDpXMjfwdzLCitfKP4MPklGmrzvH+X+PBXLNprOs2miZWaTQpuXhRjTMVg1rm0abxUQkjvASG7D7zERpN3Fo3F7fgJKlG2SZj1pGE7KsyY/6pU5ltakuIjqxZB3xEGiwXb4Zjia4rv8jRMmophUGVUb1tYXuT8G14Jh+Mmm92TBwnToWqQ3uPqAbH6wWRWfg8VcCXyB0X0akBTKHQQohx7RFyjGp74pXNuamhwdJN/aH639uOWxxGsot9+MCSZo5MmwQag+93k5w3FKYzDqgBMWlVTU64tumAdc3i+wlhEHMa+dUaiMCRdzjmosZ2XMOelQ2mc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fcf83e24-e8a8-4ab0-38af-08dcec65c2a5
X-MS-Exchange-CrossTenant-AuthSource: CY8PR10MB7243.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2024 15:34:58.2991
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cImNsGjqUk5nwfu4yIQd7j1Ve1TNVtW7xVmH30MoXEpUzbRIqgF2XV0ImjXZOpJrq/CfuoJvDq9BsbdjOyU5kmMkEFfiDGfKgu6ts5xr4DQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB5003
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-14_10,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 phishscore=0 mlxscore=0
 mlxlogscore=984 bulkscore=0 spamscore=0 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2409260000
 definitions=main-2410140113
X-Proofpoint-GUID: KLqTTNk-Oku0SuDhVh38PWNQmpM1b5xN
X-Proofpoint-ORIG-GUID: KLqTTNk-Oku0SuDhVh38PWNQmpM1b5xN
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=WtAptGd+;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=PKFEsT42;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 10/12/24 2:55 AM, =E5=BC=A0=E7=BF=94 wrote:
>=20
>=20
>     For commands coming from sd, then scsi_io_completion will end up call=
ing
>     scsi_io_completion_action and seeing the UNIT_ATTENTION and will retr=
y.
>     I'm not saying we shouldn't do a fix like you did below. Just want to
>     make sure I understand the case you describe above.
>=20
> =C2=A0
> For commands coming from sd, then scsi_complete calling scsi_decide_dispo=
sition to get "enum scsi_disposition", scsi_decide_disposition seeing the S=
AM_STAT_CHECK_CONDITION and calling scsi_check_sense function, then scsi_ch=
eck_sense seeing UNIT_ATTENTION. If expecting_cc_ua =3D=3D 1, scsi_check_se=
nse return=C2=A0NEEDS_RETRY and scsi_complete will retry.


For sd, scsi_decide_disposition will return SUCCESS. scsi_complete will cal=
l
scsi_finish_command. In there we call the upper layer done callback, sd_don=
e,
and it will return 0 as there are no good bytes. scsi_io_completion will
initially complete 0 bytes. If there are retries left then we call
scsi_io_completion_action which sees the UA and will retry.

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/c84560d6-e6e2-4a88-8525-9193854f636d%40oracle.com.
