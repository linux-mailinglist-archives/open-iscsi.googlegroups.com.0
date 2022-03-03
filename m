Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBTNRQOIQMGQEDFYG5YA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FBD34CC09C
	for <lists+open-iscsi@lfdr.de>; Thu,  3 Mar 2022 16:03:44 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id x4-20020a63b344000000b00375662f4a7bsf2904036pgt.15
        for <lists+open-iscsi@lfdr.de>; Thu, 03 Mar 2022 07:03:44 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1646319823; cv=pass;
        d=google.com; s=arc-20160816;
        b=sUr7mJ85x/KIXgunSxFIPZ4QAxeLnlJI5Ajbf8qsJJ2FtdrNgcqi7/JpBUevxF1z0V
         VWX71+VpRa5o5blzf7p6N6a6Q2jqKriMCuFYPb+NA8P0d7UQsz1xHRXAZbsOvRXJqWOm
         F72PLmvWu8mxxcAAeZDTij3pKhlc79+OhXOrlffMJe9hLwRtYVKWfpd29jdk3MfuQ2GZ
         cxIgM4WdIY85vA54WcxyVcyUDbt3QNkfB9Szt/SSsgdFPBeCaZA1aFhvhioKb0+bDDET
         7wxfJur029kk/FpE7BxZ0zPWS8eF3saIME21MkW/TVyrJZgSdj2jGFtwzCb7xoQP09eu
         WKyQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=GdkYfBl0/ByPs/4WL+ujryLn+XtnhomNctIOK85ztgQ=;
        b=iAm9jwxxlEni3kLXZ6FVQn6AfmGZPcG++uaEM0ffbSPjWeDkqWIVQL+al/MDQDZJ0N
         YA9RkDhCoixqBzB5nVcHpFnHWM8duyi4jfaKTopl3G9OV10KFSOrbIIVqxeT7rL8IRBT
         B8URCOA2vD9EgdmrvZNYLS/4eQRlaAOGS8HDkLa9t5yZ0nbIpW0Tzx9kgQYdmqg8qiqg
         SZ9Nmn5TwjuDNAs+3MT26kg8yyGnZ2730UrP9z7Eo5dJ+tZU0604IoEzhlt0ETWHx7Gw
         GbTnT6mGHrjFBQrDThR725F8PSYz+HbtuSbThxNsfSDts6FY7R5j0w1ydcHDN6Bvhnn2
         Wrmw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=beYDTbii;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=gKymb7rs;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:user-agent:subject:content-language:to:cc
         :references:from:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=GdkYfBl0/ByPs/4WL+ujryLn+XtnhomNctIOK85ztgQ=;
        b=mzN/2XxomQfsWeRTkqeItea0LWtF8d52tHKqNEx3rbc3b1ODbeLgHqXbhVY37mKQEY
         vDO87SXG093xWchtVU9mayxTbWil4RuoY5ELzV1/5pguMQ470LUfvQfXNK7MhQe9vr6J
         0+sBsVjXUO4Q4gj78g28TMeUkVYEUXYF/Y3IdrvrRXsELd3M4FFDgt+In3KrRLD+7LoQ
         DoZCF2bojuhLA7JkXyGbRfpGXaYWcpYdmR0RuGw0iSTfsXLl6V26p1DoLISx1AFGQfDa
         WvYLj5N/8QCzGK4I88py9GBJIgfBN8CHsbwsYJhCHQjXyozzBajHOFXvXWww882qGd/+
         OHkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GdkYfBl0/ByPs/4WL+ujryLn+XtnhomNctIOK85ztgQ=;
        b=sPEkDhO0Qv8WO6RDTdYBPuPqhGLmkEFU7HiWLLPuAZIoNbrJFY8drCKE1N6Z4PuyvQ
         WH9fqEiJn/gc9vHquxqpGi3Mr1u7t7Wktx5GcST/39Ah+Re/dyCdlrEF2scjXFawInRq
         ThVeaUIAkfMBZW3RK1FpgKE9P+dNIN9Th53Dn44wS0j4bc8IQrvFBmdqbmWOS0HxZv0n
         ACbPv/0RUEFyVyu+TerOPLo11Xbe+9PpME2NvSJ022p/FX+5wnxQow/iITYG8hopxqFS
         CexmJ3bQlo5JqMfKqAvTKTLUPDLnLmvaDKfdzWVs1emTzZONqDY3VQvjbSESLURv06bk
         xdog==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531uDVzWlv0qMtxtSrSf23mA1oMNqv9zVju2yPKc6IK2bUBttATj
	bLXH4cGb35LdkXIXMT+XZ6U=
X-Google-Smtp-Source: ABdhPJzw68Cx8v8ciy581tqeqmvFirMIjMQ0t6QZpmSdDqCJ4ejxX8qilNFMXK8dYk8h7rumJ2dv9Q==
X-Received: by 2002:a05:6a00:10c6:b0:4f4:75e:8e4c with SMTP id d6-20020a056a0010c600b004f4075e8e4cmr22574857pfu.72.1646319823012;
        Thu, 03 Mar 2022 07:03:43 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90b:4b11:b0:1bf:1b26:e7bf with SMTP id
 lx17-20020a17090b4b1100b001bf1b26e7bfls625420pjb.2.canary-gmail; Thu, 03 Mar
 2022 07:03:41 -0800 (PST)
X-Received: by 2002:a17:90b:408b:b0:1bd:3839:1413 with SMTP id jb11-20020a17090b408b00b001bd38391413mr5866196pjb.138.1646319820869;
        Thu, 03 Mar 2022 07:03:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646319820; cv=pass;
        d=google.com; s=arc-20160816;
        b=purWKcAscITP9VddCtDpaOWK3d1RxrvQyzzdodCvysB2hkxbMRS9zaec9Z+t2a1qqp
         v9CiWjfugseP2mjhbv8hGfso2E/ZhmZAf6fXQ1dxA5KJuTX6oPj62Wp2eY4bLpDzWxN5
         BfPeeq73kJuPG3N9SP+9U6WwV+scySI2TWP0ubEIcxVrEF2jEpwArvSgLZzC6X/bbq1s
         N6TVBomzufwxTH9ufRoInsUgu4vwE0Ethnkj2GbSVEsdDj3Oc0faltTrkyVfwsNQ44cS
         unOwcmWg8t9FMRKAh27Qkc7M0hRtcfTv3DgQqlpgp4BWtpCW6/PDfAIuwRwFIrO3E3Tj
         bcpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=Gu5qKNu1UfygB4znUs8QeGbB0Kh8fZcGKBJ0W9fJSKg=;
        b=iVXX7dfKunu9uLZcHfm+1Pa3MPrNQB+kE+KHfqBTc04KWTsgpz1U3l41Mf2pi712xc
         hukvxfonnuB/WAIaXmAXNS3jSculxyZJyBnAuwAeofpI5D9ynb11CnlQOc/q8szA95v7
         rbFWe9g+aUM7POkdRLneYxbEw4slaBYqRdKAsGXa8JW076yDmBjYOSbIGECJbyPWL5XV
         JwQzBzZmPb1dl1CApgeGX3RI+7spJ4e99lneSQWjdr9h7HpA9B2xMLO02nSaeZ9cKqV5
         4GSzL7ZuGJKVElMjQYvZ8uW/YcTxZe8eRXwnZh2N+Z6A/T4hM2BgQw0rLVgdJgGQronr
         RerA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=beYDTbii;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=gKymb7rs;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id k5-20020a170902e90500b001517cf05af9si79992pld.8.2022.03.03.07.03.40
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Mar 2022 07:03:40 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 223Es3uF010147;
	Thu, 3 Mar 2022 15:03:40 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by mx0b-00069f02.pphosted.com with ESMTP id 3ehbk9fncr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 03 Mar 2022 15:03:39 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 223EvSkV121964;
	Thu, 3 Mar 2022 15:03:38 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
	by aserp3030.oracle.com with ESMTP id 3efa8j9rfw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 03 Mar 2022 15:03:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lm68+iyDgA89gzn85CystBExkhx/Ma+c3lplWeuwIsCVfHEF0Jl61bmeQRJ+OgEGb7PB2JXsJLP9v8TRrAIOq7afWSw71FVaJhNan3nMyj9PkBaFm9hxOmIRIDl2n2aaX74c2XPEkUgT98W0i4llXa/cEzq2F6V4MV6zNxQ876FIRuupFPExhyVSbYz9JaafXAbPVx3Uf0ewqfjufTuRI4UOYkmn1gKh9qaNkRH30XXBrTPVsZxlh4OA8jzo5XwhWBu6YQ+s76DVlPToqWM1FNOK6vIGP6buzZ3yia+A6fH1DDrxilM9Ul2MnikebUm/hhn8hmADw0rjXWs2fBTSPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gu5qKNu1UfygB4znUs8QeGbB0Kh8fZcGKBJ0W9fJSKg=;
 b=dOoyUtPs8LpvsV18SXdw6vsUywcgIbWU1/xyIiZ15vXmtiAvZomJ0VbVqe3vTitxsCaf33VeAVoH14NQEYSnt4cAPWO1n6+9kct3LyYjKe1wCxgjvFigxR11YZvvdajPnKLwtN+q1K4czLpHuTOTdl/w0h9WgXdsOmdRb6xL5BFBXyz/TXy1XZTLogj21LS2DcSsIRK063SHD+8CBsB0m/KrtbvTZ67JUTaiXiBt4aNNv485WobEcuwdzc3F0FSepdYuYizy/qcCgjo5MpVI87C00ubvEunIJcduLPixCQDr1MNTfe/aGfdE79j+KwE8rb6nRWYdAY4nnnicKv2aZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 BN8PR10MB3204.namprd10.prod.outlook.com (2603:10b6:408:c7::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5038.14; Thu, 3 Mar 2022 15:03:36 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3dd8:6b8:e2e6:c3a2]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3dd8:6b8:e2e6:c3a2%12]) with mapi id 15.20.5038.015; Thu, 3 Mar 2022
 15:03:36 +0000
Message-ID: <e2b37e24-44dc-a159-e45d-2c720fe7ffc1@oracle.com>
Date: Thu, 3 Mar 2022 09:03:35 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH 1/2] iscsi_tcp: Fix NULL pointer dereference in
 iscsi_sw_tcp_conn_get_param()
Content-Language: en-US
To: Wenchao Hao <haowenchao@huawei.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        "James E . J . Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Wu Bo <wubo40@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>,
        linfeilong@huawei.com
References: <20220304025608.1874516-1-haowenchao@huawei.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20220304025608.1874516-1-haowenchao@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DS7PR03CA0110.namprd03.prod.outlook.com
 (2603:10b6:5:3b7::25) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bd6b75be-000a-4571-1e69-08d9fd26fe4b
X-MS-TrafficTypeDiagnostic: BN8PR10MB3204:EE_
X-Microsoft-Antispam-PRVS: <BN8PR10MB320497BE01D85CF01E146961F1049@BN8PR10MB3204.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aXcp98GLcWwXCzx4PfmlDMea+cbrFynkSPKfzartxdCdlbQ0CKVH4ejIJ/v+nq3KfPJd3R1jho4g4SkuDYFm1ZLb9YydQ0oj7KLt62HJLcbnOZdvpHoVh4QdRelaqpYpOVtADK3k2UV5MCPf/WZspbOQDTIGG/2x9JK2U/AwWpHLv6qcKDhGn5/K6LS/ZeGQ5ftGbLy74YpXIcbEI1I/B071heB38y+QrpPUcrDbAQc5rbLBbm+jr/qUvW6JprrvkQW7mCbql9nLVnhq9wcf0bgW5GqeyuAmAF3K7MUluJ47uvNaleF1hC/yl0/uvHfuWiovpmMKvCl2umVhV6MWj1OjdRLYgXxWgkQtO/iYQC99aljka/pRGuxgBecgezJxU3RdYj9s3/McHmRcst5VVYQ521Thc2fs+T13Wj++R36nbgMP8RkDXijcmSQc7sc6ExQlkzIhIrqLT0DS6Nne0VZijVzvP6XmtQluqobccV00cYgTrN8/SxYHkg4dQK5Eun6Rq2NYq9zA8cpTrUfuBCQIG8qjEHvqPZTJKIDry9EEWhq9yrqFpWZzSS3wwf0MMnzaJVy45jgH8S0EXVpcF3HzBl+YUBfv2rDn1N2gkQlh96v+H+bX/ks8gh3n4xgbIXn1p2WW8Eu49vTnMlxrTXZrPJ/MDBY/S85gpgWw/N0GW2/G3ah8XKMfKPDPqKsgyRo3UIrg7E6xp7AUK3OBXH01DWqjlWGEu1oMX5AGsR5QKY628ERlUGSOCrdhMWIf
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(54906003)(2906002)(110136005)(53546011)(38100700002)(6506007)(5660300002)(7416002)(8936002)(4326008)(8676002)(66946007)(66476007)(66556008)(26005)(316002)(2616005)(31696002)(6512007)(31686004)(36756003)(508600001)(6486002)(83380400001)(186003)(86362001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R3hGci9RanNkRENiQjIrVTczRTdic0hCNUNxWkZJdGFwOXBjcUozdUJNS3dJ?=
 =?utf-8?B?RVlYZHdRSGRvdVRZSXM3NWJlaWtqZ2s0bmdjVGxaNkU0RW92ekZaUkZ0dnMv?=
 =?utf-8?B?MU85Ny9xWjd5Q1JGcFVMVk9kSzBxVVR2MmJmWjFabnNWaXVIR1daOUJOQmdH?=
 =?utf-8?B?WDRCaExSaXM0Q1FlVm5CRXZjNnJOSUJpbUU3amxFQWpTMm5vQkU5NXIzUjFQ?=
 =?utf-8?B?YnRENEtsbU83bnJ5Z0xVdlZnUjhnV2RCYUpmdE45MmlqWDRORlExK2N3bTkz?=
 =?utf-8?B?N1VPQ2NmNUVLckNmWlMvaHJTR0pBc0VzaEloZHoxTEhzM1BIMlBwOXh2MHFV?=
 =?utf-8?B?TjExTnlha3NHd1FUdFA5blNCNHVtV3dhVnN1ckxGRldGKzJTcXJKdUtzcWF1?=
 =?utf-8?B?T25hNkdRY1NZM2F1NEJBSnc2NjR4eGhiK3hNR2g4QjBlNzE4R01zNEFScGxp?=
 =?utf-8?B?V0pFYzBCNDFWL083cWVsWEZTOTRIMVh1eVg2Nk8vaVRua0lOUzBHcWpEcG5k?=
 =?utf-8?B?WW9rYjV1SFpsdVZORFROWkMwOThTcVZPVWJIamFmYUxPSnpFelFMcHdKZGxK?=
 =?utf-8?B?VjIvVUF0Rkh1WTJsNXFQalRVY2tqSUQwM2N6MzJtckU1dDhXSTVyc3VFTlNz?=
 =?utf-8?B?MVVUemRGT3p2b0xkSGNEaGEzMnh2cmk1RExVUGNHRUw3RzFETzFlNzRZcUF4?=
 =?utf-8?B?cFBJaVRSc0dCenBsN3FLY0d0aEpnK1Y2QkNuRlVZWEVObjNKckFIUXcvRERt?=
 =?utf-8?B?OGNPL016YmFqVjRLVGQrdW1ESXF2ZUphaW9jSUdpdlJWV0F1YTZjdWZJTUIy?=
 =?utf-8?B?aWNQUG92LzA3NWdYZXZKb2hBNEptWVZmaGE3L0FXcHZIeHNkSXJTVS9yNWxy?=
 =?utf-8?B?bEZubGZrNjB1ZzU4bFphTlNKL0V0REpaYzRzSXN5bGRHZFM1b3hjQ0o1enU2?=
 =?utf-8?B?d1d5czFZeUR1ZkR6OWYxejlhOTRERUlrYXQ3WEhWeTJPQ0ZSREFCUmpwUE9J?=
 =?utf-8?B?UEZRaWlhVnJqM2I3NWNZNFVDVEdjc2k4NVZpK2dsWDZmSkdtS2FYcWREd0gz?=
 =?utf-8?B?V0wzZFluQ2o5cW5naEtXK2gwd21UZkRhL0tjTGNzQ1c5a0ozd1NvWXpQTTVU?=
 =?utf-8?B?cTVQNlFCMjRLWkZKNFZrWUpKdiswODR3bUxMbldWNkUyYmFvWElDYWFIcGN4?=
 =?utf-8?B?YVdlSDBWQVg0YWFZK2VIMmZ0cTFnT05HMU1uNVhCeVNScEdsZXFlblRRK25I?=
 =?utf-8?B?RGMzdzJIbG8vaUN3ZXV1a2szR3g3UlRicVhUMnloNy9SdDJ3Y0s0YlVnSVBi?=
 =?utf-8?B?YzlxRUtRenpIa25CekkwUHdtQWllb0gyV2RkS2h1VmwrNmtRREF5WWtKdnVO?=
 =?utf-8?B?N09GYnRjMzVPNHRROUxkK3dFdjMyNGFXMDRWZHdkMlV3SlpuY0RHQjM5S1Fm?=
 =?utf-8?B?MnFZTHRCWGNlaG1pd3kzNi9XUmRwN3ZmbnRWVDRHalo4NnVmSTl4bnpYR2tP?=
 =?utf-8?B?VnVPamdHYklva2diNVVqK1p1RVBXbDNzVHRzclNCam1FS09xczdEZDlVekNx?=
 =?utf-8?B?dEViVzlWTFRKQXhlaU1QNEEvVDF2RStCQlUwQ0dsVWVXcEI3R1JVVldWU2lr?=
 =?utf-8?B?VjhwODFSMURnNkoxbXBrQUNlQ25UMjY1MUF2d1oyZWwxUFUvVHNvYi9lS2hJ?=
 =?utf-8?B?bGp4YWcxZHlYS2JXTE93RmpFOTZmbUdPTG5HMFdvNzhFWGVzV2dTL3lQVG9S?=
 =?utf-8?B?emVQRGMzSWNHd3piRzkwbnlBa3MrQXloZWhUZUlRbU5JRitLaUlEOHVOeUhL?=
 =?utf-8?B?bHZzNktnSlAwK1BmcUNEbWpVM1Y3UjE5S2kvenNlN1dPZnZtMEJESDhVdXlt?=
 =?utf-8?B?SWJNWTFBKzJVdWNMZWFicmczNmhMc0QrbnZYOFVweGFSYitFUFpUVGxDL3Ur?=
 =?utf-8?B?U041dUpNc3ZncXBsRzdRUFZXS3FnUnAxRTdMeldwVHhYYk02QjFoQnF1YkVr?=
 =?utf-8?B?bEVIZjhJZGxiLythYWowNUZhK3d1Y2szZmJnZ1FuTkRqLzhlM3UyN1VkWFkz?=
 =?utf-8?B?WWEwTkRtMFdSUngzRCtwOC9ZYWJBK0EvSU5OYlJZalVVek5jTHpMVVgwUS96?=
 =?utf-8?B?MWp3UDVUOWNqY2lwU2tpaDlPcVVkRVRGbmhuT0ZDOW1NK3BVNHN5NzZ0NFJ3?=
 =?utf-8?B?MmhIcDJQdittRG5POVpCVFpRdFlZK0FNU0MvcHdIK2NQeFlJQzM1eU9BM2FH?=
 =?utf-8?B?QURWY01oU2YvSWhzbkVyVW5XT0dRPT0=?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd6b75be-000a-4571-1e69-08d9fd26fe4b
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2022 15:03:36.7650
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3VzmSii0S/2Hwzj6WUZim4pgueClUmAeExhedN0XqjyvfIfr6F0Q0CSfgyGRqzyPF+Bp0lZvgPt1ROkDG6b1TczOdU4bXOeMfbU1l6P/aNg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR10MB3204
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10274 signatures=686787
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 bulkscore=0 phishscore=0
 malwarescore=0 mlxscore=0 suspectscore=0 spamscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2201110000
 definitions=main-2203030072
X-Proofpoint-GUID: 2kJtawjd2E0Sro98XTzGW6B-kZSf0pAb
X-Proofpoint-ORIG-GUID: 2kJtawjd2E0Sro98XTzGW6B-kZSf0pAb
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=beYDTbii;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=gKymb7rs;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On 3/3/22 8:56 PM, Wenchao Hao wrote:
> kernel might crash in iscsi_sw_tcp_conn_get_param() because it dereference
> an invalid address.
> 
> The initialization of iscsi_conn's dd_data is after device_register() of
> struct iscsi_cls_conn, so iscsi_conn's dd_data might not initialized when
> iscsi_sw_tcp_conn_get_param() is called.
> 
> Following stack would be reported and kernel would panic.
> 
> [449311.812887] Unable to handle kernel NULL pointer dereference at virtual address 0000000000000008
> [449311.812893] Mem abort info:
> [449311.812895]   ESR = 0x96000004
> [449311.812899]   Exception class = DABT (current EL), IL = 32 bits
> [449311.812901]   SET = 0, FnV = 0
> [449311.812903]   EA = 0, S1PTW = 0
> [449311.812905] Data abort info:
> [449311.812907]   ISV = 0, ISS = 0x00000004
> [449311.812909]   CM = 0, WnR = 0
> [449311.812915] user pgtable: 4k pages, 48-bit VAs, pgdp = 00000000e26e7ace
> [449311.812918] [0000000000000008] pgd=0000000000000000
> [449311.812925] Internal error: Oops: 96000004 [#1] SMP
> [449311.814974] Process iscsiadm (pid: 8286, stack limit = 0xffff800010f78000)
> [449311.815570] CPU: 0 PID: 8286 Comm: iscsiadm Kdump: loaded Tainted: G    B   W         4.19.90-vhulk2201.1.0.h1021.kasan.eulerosv2r10.aarch64 #1
> [449311.816584] sd 1:0:0:1: [sdg] Attached SCSI disk
> [449311.816695] Hardware name: QEMU KVM Virtual Machine, BIOS 0.0.0 02/06/2015
> [449311.817677] pstate: 40400005 (nZcv daif +PAN -UAO)
> [449311.818121] pc : iscsi_sw_tcp_conn_get_param+0xec/0x300 [iscsi_tcp]
> [449311.818688] lr : iscsi_sw_tcp_conn_get_param+0xe8/0x300 [iscsi_tcp]
> [449311.819244] sp : ffff800010f7f890
> [449311.819542] x29: ffff800010f7f890 x28: ffff8000cb1bea38
> [449311.820025] x27: ffff800010911010 x26: ffff2000028887a4
> [449311.820500] x25: ffff800009200d98 x24: ffff800010911000
> [449311.820973] x23: 0000000000000000 x22: ffff8000cb1bea28
> [449311.821458] x21: 0000000000000015 x20: ffff200081afa000
> [449311.821934] x19: 1ffff000021eff20 x18: 0000000000000000
> [449311.822414] x17: 0000000000000000 x16: ffff200080618220
> [449311.822891] x15: 0000000000000000 x14: 0000000000000000
> [449311.823413] x13: 0000000000000000 x12: 0000000000000000
> [449311.823897] x11: 1ffff0001ab4f41f x10: ffff10001ab4f41f
> [449311.824373] x9 : 0000000000000000 x8 : ffff8000d5a7a100
> [449311.824847] x7 : 0000000000000000 x6 : dfff200000000000
> [449311.825329] x5 : ffff1000021eff20 x4 : ffff8000cb1bea30
> [449311.825806] x3 : ffff200002911178 x2 : ffff2000841ff000
> [449311.826281] x1 : e0c234eab8420c00 x0 : ffff8000cb1bea38
> [449311.826756] Call trace:
> [449311.826987]  iscsi_sw_tcp_conn_get_param+0xec/0x300 [iscsi_tcp]
> [449311.827550]  show_conn_ep_param_ISCSI_PARAM_CONN_ADDRESS+0xe4/0x100 [scsi_transport_iscsi]
> [449311.828304]  dev_attr_show+0x58/0xb0
> [449311.828639]  sysfs_kf_seq_show+0x124/0x210
> [449311.829014]  kernfs_seq_show+0x8c/0xa0
> [449311.829362]  seq_read+0x188/0x8a0
> [449311.829667]  kernfs_fop_read+0x250/0x398
> [449311.830024]  __vfs_read+0xe0/0x350
> [449311.830339]  vfs_read+0xbc/0x1c0
> [449311.830635]  ksys_read+0xdc/0x1b8
> [449311.830941]  __arm64_sys_read+0x50/0x60
> [449311.831295]  el0_svc_common+0xc8/0x320
> [449311.831642]  el0_svc_handler+0xf8/0x160
> [449311.831998]  el0_svc+0x10/0x218
> [449311.832292] Code: f94006d7 910022e0 940007bb aa1c03e0 (f94006f9)
> 
> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
> Signed-off-by: Wu Bo <wubo40@huawei.com>
> ---
>  drivers/scsi/iscsi_tcp.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> index 1bc37593c88f..14db224486be 100644
> --- a/drivers/scsi/iscsi_tcp.c
> +++ b/drivers/scsi/iscsi_tcp.c
> @@ -741,11 +741,16 @@ static int iscsi_sw_tcp_conn_get_param(struct iscsi_cls_conn *cls_conn,
>  {
>  	struct iscsi_conn *conn = cls_conn->dd_data;
>  	struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
> -	struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
> +	struct iscsi_sw_tcp_conn *tcp_sw_conn;
>  	struct sockaddr_in6 addr;
>  	struct socket *sock;
>  	int rc;
>  
> +	if (!tcp_conn)
> +		return -ENOTCONN;
> +
> +	tcp_sw_conn = tcp_conn->dd_data;
> +
>  	switch(param) {
>  	case ISCSI_PARAM_CONN_PORT:
>  	case ISCSI_PARAM_CONN_ADDRESS:

We are actually doing sysfs/device addition wrong.

We should be doing the 2 step setup where in step 1 we alloc/init.
When everything is allocated and initialized, then we should do
device_add which exposes us to sysfs. On the teardown side, we are
then supposed to do 2 steps where the remove function does device_del
which waits until sysfs accesses are completed. We can then tear
the structs down and free them and call device_put.

The exposure to NL would be similar where it goes into the wrapper
around device_add. However, see my comments on the other patch where
I don't think we can hit the bug you mention because every nl cmd
that calls into the drivers is done under the rx_queue_mutex.

I think we should separate the iscsi_create_conn function like we
do for sessions. This is going to be a little more involved because
you need to also convert iscsi_tcp_conn_setup and the drivers since
we can call into the drivers for the get_conn_param callout.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/e2b37e24-44dc-a159-e45d-2c720fe7ffc1%40oracle.com.
