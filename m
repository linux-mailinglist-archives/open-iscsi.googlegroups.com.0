Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBI6VV2KAMGQEUZMXMEI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0444B5311A7
	for <lists+open-iscsi@lfdr.de>; Mon, 23 May 2022 17:39:18 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id s130-20020acac288000000b0032b6ef7a17dsf321906oif.4
        for <lists+open-iscsi@lfdr.de>; Mon, 23 May 2022 08:39:17 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1653320356; cv=pass;
        d=google.com; s=arc-20160816;
        b=w5QiXtwGoxrwzY+tqyXC8+c3LrzXTgPIMohe2ET8+RCfpjajjiiPQIj6amAhPseBiH
         6EEyfOB39J6/O9CWAB76G/84PXDMR8dZ6MRJhrYO0S9RtzLIXNJ0vyN81F/M2LXlSguS
         zKQoVG+52iCD+7XsjONJIqnJ6UGsW/MTMR66B+dxmj3IFoK0zKlD4Njb+NEGsjZdnXjk
         68NCwmrW6XG/wZe2ufGpQh7zLkV83pSdWaX18Nd1L44ZXFXrGwQ/74B+MDLesELAlyPb
         MQXL4UylZjCQnAM4hM8DVzL+cCryFYB4ba1+xbGuJ6bkzlvpS6Ict3hN1oWfrYRnMhWs
         T2AA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=2HCw04HBMI+lkHlSVcHp1zD1TEDP8pWvlu+xg92hK5c=;
        b=PBrV9Q3t/w4f0QLP6gZ1uGoAoOtAVO1bReG4AfZIz//802c/7dkIG1wvP3SMKiUiaX
         RxyPPPAKfhM+pDkSGvOngBA4GnN2ApLa/qhj8KJHeXriOROGXT6cIzkL6E0fonOyOniy
         CQGxomU8iPDr33/LXAgMNBzMGVJU2D18qosoiS/LVPisj5r1IxWeOxbrZtatOQVIamdb
         YuohS+CA+ff88XKLpANzi8uvsyesDNbf/QrxGlIhfZcCLpYHU7QIBL7e6KHbuFVyIMu4
         B2GkRi9DNTPBC89kfqzm8wG4jJY0D3BFBs9cQzIqWWlE7zwDtLFS4NzSJkTzMiQlVnZC
         t8cQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=iRyUcDQi;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=QeO6nsYA;
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
        bh=2HCw04HBMI+lkHlSVcHp1zD1TEDP8pWvlu+xg92hK5c=;
        b=DJZPers0Bvpm49bB5jLnuYZrVdgcDg4cdICYjm68nMRWHZAaVudJNGjWB1BTixjDJk
         iv6BbRtqj+hyP8uM7eVzA3dS71oD/IA5jHLtrZfjyNplav+LUd7obwbatVNiqPwjNy4e
         B+g5lA3DAUKCPW53fm+sDshM1HnNuRRFsXrfttD90MJ2tkv2OMDqNDj+oWa92Hdfn2hl
         bH9/ygCihI7beM0h9XL+2ibJRwfUMxvjoMCbwA73zpdJ0K3+0fafYF70RdXUKvnE8wcO
         qGN7DpIQ8hh7xZU893HGeUnd5Up/YpOO3DrLoEGvbMpg9VbT5ipd/yb8uOjip34fj9qm
         xFtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2HCw04HBMI+lkHlSVcHp1zD1TEDP8pWvlu+xg92hK5c=;
        b=PLirBuMu76WlZta5pC8kswtrZKLVN7OR6NFnBFZ1EFfXmRnf8EeROGFkjp0MjBLetR
         dgfDKZD8eRS9yiprHX81q/4DgZsPZNaY/tKtTiKT7Wnp1T3G/d/Su9Qe0hN49aBRmQ0h
         ltdwIto8EyGDygSCPb1Pqm+/ODDah5a7yoLPOvDTa6KPD9luOoak92FoGimjd/38pnFO
         tbQ4qGDmpGlZy2w0oTxnp+44kp4TNxAeBVAfx6mzM5fnYfMtWjRrtaqUL+HIFbJS5S9z
         he1ZEUKtYuKD3cJBR6F4zORC/4ojFM+w0j07FIB7Y6hdbW93oRhya60SXuGIAYACpyms
         kQlQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5333+/2eNzToV7cUkb5czDu5N9+q+C76jXI+UaUuy7uijgn/NPBa
	Iow5WE4gCFL9XKNqejecXgo=
X-Google-Smtp-Source: ABdhPJzoMYdIAzPme8UQHNLMTqMPX4ovAsUMfjilDnvQuoxiOvaflcplkt9iAI4ZpOgI0cz936M5PQ==
X-Received: by 2002:a05:6808:2389:b0:32a:e3d7:56dc with SMTP id bp9-20020a056808238900b0032ae3d756dcmr11224567oib.57.1653320356704;
        Mon, 23 May 2022 08:39:16 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:13cd:b0:de:c1c1:ac0e with SMTP id
 13-20020a05687013cd00b000dec1c1ac0els5292066oat.8.gmail; Mon, 23 May 2022
 08:39:15 -0700 (PDT)
X-Received: by 2002:a05:6870:538f:b0:e1:e893:95c5 with SMTP id h15-20020a056870538f00b000e1e89395c5mr13066350oan.11.1653320355237;
        Mon, 23 May 2022 08:39:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1653320355; cv=pass;
        d=google.com; s=arc-20160816;
        b=t0OHLYFvbeUSRjcnA1VnmBfKdlpph3O6q7MawWh9RAmItjMZhMvhBhvF4jygnhIp33
         K8/44eNFsLGGDE1mzt50SEfonDox7yIHTi4dESevS3kEhZalvcTOVIFpJmsCac99wUHB
         J4van4gHRCZNgJd+tIkpHMvCqg8Et4Je5D3cECvUqD73Tv19uLvueHl18nuyv1Z2uUtE
         ZZL60xPFGONZwA3XlCqLlMwJemFNjs100wNs+4WjD3cvkx+mwpO1yTY0044W+4G+miiS
         wRjjiAEpfjzBEmNbpZG4HwqRywy7gBgxMhTTXiWj0lSZfcrLILyycYdRfvVLeKVO12GV
         j7mQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=zwzF6dLsRL1IpYHOtWJWJ/aNdeWjKacn2uXnSaKIHf4=;
        b=tOY/Q/xCMA5BG9sBHG1ZSVWmjLrV1NykIPMeCLVMNv+8PamedaSJuE9tZTRVaZgeBy
         RU/a/pWuPfM9zP8NmLujAui8dW8s+p1vu2nJscn1uWsRIASyy8MhDw/sfiEwJYM25Tfg
         jAm5cnZByyxNcSh2kf9LGfUibu8sVCYRp6KaOAMhY5iG4xljbGvbvC4S+0NY8KUdQ4PH
         IbSHvkHwDXgyEkkaBqbU2SkRJ2/M4Q2ulzeCQnkwI2crYKwGOEu49DnEcAEMOtL3Cydi
         iiOwP1iO/eilU8Tlu8Npm8TXUlDMS1l+JtGjgoZSZSogSACFnBzDAbYXb6hIuaE8QzgE
         prXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=iRyUcDQi;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=QeO6nsYA;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id fq38-20020a0568710b2600b000e217d47668si1449035oab.5.2022.05.23.08.39.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 May 2022 08:39:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 24NEn0Ea005443
	for <open-iscsi@googlegroups.com>; Mon, 23 May 2022 15:39:14 GMT
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3g6pgbktm2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <open-iscsi@googlegroups.com>; Mon, 23 May 2022 15:39:14 +0000
Received: from pps.filterd (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 24NFU9sT027308
	for <open-iscsi@googlegroups.com>; Mon, 23 May 2022 15:39:13 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2101.outbound.protection.outlook.com [104.47.70.101])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com with ESMTP id 3g6ph1rhcj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <open-iscsi@googlegroups.com>; Mon, 23 May 2022 15:39:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=axaYiDuVs4eI3GcUNHHKaeGIFd47yxDPenjZZcBdgNhIpKEhSQilULsb8+MesapOuR887L5tKCQNyjp12DTqjC13fGL2bouYIsYVfRRt3CgiFxxDZlAZgmPFVWtC9NHrz4zqdk/xp4wReS84eq/emHZRFnrKt7FXWR5ZT6tMCF1pSK1oKen2uvrLPPeXUygN+dnr4F7BLgBydATWsIDO9luEvwysHcaXZFM9lH7zs2mMSUDr7qXbbVuBU7TaoKTwz/aDEcVr3MivB2Cs2vNM2t9uIxjSrXyFivsmhmjV6LN5cxR5QdyD5tnOLjIReKvBSkcFqmx4+pWvvAFTQAEHdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zwzF6dLsRL1IpYHOtWJWJ/aNdeWjKacn2uXnSaKIHf4=;
 b=mt+b/PF0nKrZTKNk3eqIA4OT1cb4S6HIqYq30AcqZNb2N79xvvTQgbEc/lUgIDOEM9+U9mWlJRHSIL3nrTIbtfPie5Ay3h7m6v3HLLgoD7HsqDBIZ2QdCSBdBJ6YNfDd5ZHkC53r0PaR+wEaV3Www4fhSbDO5FlRILndmIRxyIissPmWDzOrEnJNdsu8j7MW1Is42T0cCvI/Jfn3GsoY/uw2u0YUYBG7EZbGWvAbMQM6N6pSbEoXhOfDfo+fbu6ICfu0Yp+v8VYzGTie+uWwXRrsVP111HrzjSFH2BVbhDRG0NiHOSJRcrtqfViUsIE1fUplXVsvD66KwZMzxkHGdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 BYAPR10MB2821.namprd10.prod.outlook.com (2603:10b6:a03:85::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5273.17; Mon, 23 May 2022 15:39:11 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::f81d:b8ef:c5a4:9c9b]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::f81d:b8ef:c5a4:9c9b%3]) with mapi id 15.20.5273.022; Mon, 23 May 2022
 15:39:10 +0000
Message-ID: <d0e54ea4-dfcd-8866-a736-d9b6de29ce9c@oracle.com>
Date: Mon, 23 May 2022 10:39:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [bug report] scsi: iscsi: Remove iscsi_get_task back_lock
 requirement
Content-Language: en-US
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: open-iscsi@googlegroups.com
References: <YoswkQ4CLZL33xeI@kili>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <YoswkQ4CLZL33xeI@kili>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DM6PR18CA0025.namprd18.prod.outlook.com
 (2603:10b6:5:15b::38) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8e6dd4d9-435d-4e71-28c8-08da3cd261b7
X-MS-TrafficTypeDiagnostic: BYAPR10MB2821:EE_
X-Microsoft-Antispam-PRVS: <BYAPR10MB28217CCA82939141E8355676F1D49@BYAPR10MB2821.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jCU8RTNilu65yMgw9QvFYmLHq+l9/tmxHsPLp4ocrSaKE7CZiLQNELOT6Dla9+G0Exx8e/JX5Xhpt6jW5VigjT5RI3hMWMRDOJp7Wi6Q1zCpmEvVOwNLOr7Xe+ljIgjNJgx3x8k4uAclEjY++dh/sgveT5M1C1UrAtUwowKjfkf29sX/ncO+UaPmCujM1vqgpI+MaEvwCbQ32UIJnCcFgDuDYNqSIECBSEtL/zU5BFu38+3+h+yupvNLxfRp75cDBQGk+bLfzEpfPk0UT/LGHiXnY4fyEKlrwLgtleyPfKOd13gNaGu3sMpAYrmThvUSB0mHJRSMqH66SOx96kVup8dhOoJGdoqIVQi0SWlxeul56NVHJL2XEbDOU9jc08JgwlMLucsByQmFloZNPgEk0s4otQ0/gYVNmihnKnLxnBtKhZqCP9oxdr4k+GxjOPCSIjOoFky3/Z+6qqvwq5G0sphKcQ2ukQu8UVp96lBbC+jAb8a+vFgoeiGasLlRlceIEUpl9RBRN1I7S7WPxfePKnrPtdvCpWeo/hQPe7dg2MILgfrp49h3QaFZwo5qDgC2t3q9kUxW00YTSHJf2VMYgeQ3Yw91OCCepvIB4PjfqPJ3j128tPrGRk6to6OdAHwvNQpAmxNDmK9/oa0E3JxYFNwZ2av7NuuS8GeZEa++5UIX9rtFKyWr3GwUQi3WBqYzNvN7kq+yoZ/hs+fCEbT48z6LtZzKDUo26ETTsHxTH+I=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(5660300002)(2906002)(31686004)(186003)(8936002)(6512007)(6506007)(4744005)(83380400001)(36756003)(26005)(53546011)(37006003)(86362001)(66476007)(8676002)(66946007)(6486002)(2616005)(508600001)(6636002)(66556008)(4326008)(38100700002)(31696002)(316002)(6862004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YzVldThnWjhVcHk2cjYxOXRXM1AxYTFUUXAveWpDMlB0UGh3dUFaWW5uRURh?=
 =?utf-8?B?NCtSRk0zem9WZFE1ZXprM0NxWmZLejMvd2kxc3pOUnAzZkUrUmNvbktGVmJM?=
 =?utf-8?B?VEdJT3JCV3lHNzFOMHNoSE5uSnhuSXpzc1BJdXI2ZXVhSkw5WFVheG96eUNW?=
 =?utf-8?B?YUpXN1pIaXZ3ZzBaZ1gwZDlSaXRPUkorQ2s3LzlPTzA4Z0tmQldGZm02bW51?=
 =?utf-8?B?TklKTlc5UWx4aFdqTk9CT1dobXFJZ1Z5Sm9FeFd6bndQSGo4eUpNQmxWL2Fm?=
 =?utf-8?B?UFhocFFtQTJNVmZxa2hmZTZHVi9RM1lLS3l5dldQYWJJMVhTajA5L0hOb2dE?=
 =?utf-8?B?U1lDVXhGd2tUZG1BWS9VYXRCL0ZXMFdGeUlQb0R5c0R2QjlFTVFVa1J4c0N4?=
 =?utf-8?B?eHIvODZKeXBoZlJWcFBZYWtrL2NDRDE0SlhjN0lmaGpSaFU3TTVXZk9Gb05E?=
 =?utf-8?B?R2pXRHdFZjdKM1o4UmNiS3JxckRsbU1WTC9FaWdwcTBWVHV6dGk2WVFxaCtS?=
 =?utf-8?B?UGhPODZnVUdDeWR0cGkzSGRiamYzRXZkM09lWWtyYWNqaWJBeURDcW1lTW92?=
 =?utf-8?B?eXZXSEY0WVM1TVMwbkZ2MmF4eFJueFpkS3dNcVBVVTF5NXNZMU5DSXpPZkNo?=
 =?utf-8?B?dzFCcktUeXowL0J3USs2Y0lweTZXS1RhelNJMVpwTVpWaVZIRWt3NnJuVjFm?=
 =?utf-8?B?WnpJNlYrVDdyYnhUeWVZUGxtUlhpc2huRVIxUVhmQTRrNGxGSmN0dTZPV0lD?=
 =?utf-8?B?ZU5OTmFacUZxb29GbFhuVWFUNHVPWTFYU2ZScm0xRlBOU1hIRHAxS1liaC9p?=
 =?utf-8?B?aHFoeWFnTWMzUWJOTVIyNHVOVGpqWmd0cnlValAvaG1qNmZXWGVXczAxUjNx?=
 =?utf-8?B?dUthbFJ6bjg0RldFbWtFS2R2cDIycElTUVlhU1BNcEZ4VmM1bHQvQ1pLSVFZ?=
 =?utf-8?B?NEV5OGJnemFOU2xxbUhFWWd5alg3QVBhWVRndGdwT3V3NE45bFg0SGhnbWF3?=
 =?utf-8?B?ai9ScklabHcwMnRod01xYmNIZFFrT2xEblJrbG9QYncvczdYRG95UXo5M0h5?=
 =?utf-8?B?K1YwMWhyWjRpS2RuaDMwemY4Z29EeWNlcnV5dU52Z3hIVjhEb3Q3SVljaWlB?=
 =?utf-8?B?ZFJUMzQ1UTk4dmxMeXBsQ3plT0NaMFR1WVg1cXFEREN4a3FkMi9QMUVMWk5W?=
 =?utf-8?B?cFpmSFlGeFRTdVlDcnRmRGZOaS9CZjlvN3N0anpVSlBFODBNUU5saHp1UW04?=
 =?utf-8?B?bExpTlZEaGUvQ2dlejNrSzVHbFJ6YTJhUmtMMWQ2S0pIYWxKOUdpYndLczZV?=
 =?utf-8?B?WERqQko0Ulh6N2pPUVVXKzBJaU42MlRtNEhzODlyaU00OFpjaHN1aHhhY2FW?=
 =?utf-8?B?NVJXbVZqMmpmNHBIN1E4QXo1eG1XbSszeTh2bjBDNmZRdDZFZ3ArT1FVdFBV?=
 =?utf-8?B?Y0paQjhaR2pFWFozZ0hFUmJ4UUZ3ZWRuYVVsYm8rbTQ5dEI2d2tlaFhXTlY4?=
 =?utf-8?B?SnFzOEhMMkovQzNWZjRBVjRJM0dSZjhKaVdtWVgweHFYbWwrTUFRMksxazFy?=
 =?utf-8?B?MFJpUkRXd1h5RWNHTWNNNktYSnp4c3VQWVJ0QUdRT0xJTXJoazlJK1RxL3B1?=
 =?utf-8?B?aVNNcWgwNlN6TlI0cGtaSDY2a3pDZWpybEF6YncvYXM0dThkRzRZbnUwWmFw?=
 =?utf-8?B?c2FzbGVsZGFtaldFd2JmTnowa3VFaXpvT1BKK0NmdGc1a0FIb3VmOFIxeWxj?=
 =?utf-8?B?bm5wOHhIVVJ4OTJvVnZkMkNLMkN5Nmx6Zy95WVBlK2hMeHluaFRZRUNrUDJz?=
 =?utf-8?B?N3lsYllGTmNZekZXS1hMWHZKWUV4aGlFTk4rQklkWTFNYlpRL3ZuTXpXcE1y?=
 =?utf-8?B?RUljSkFKMDJScW5NWVpSaXNwUm1wM05pSUNaYmwvSlJ5aEZYTys5bWZjUytW?=
 =?utf-8?B?djhtSW54NjZEV0g0NUs5Ky93OEZjNGhySFBNbjRBTGhzcjJtN0JMT1FrdlhG?=
 =?utf-8?B?MWpwK0NaUG9OVnlzS2J3cFhyaDVWVTdOd0Z0QU1JUWZ2cWNRMCtJYVlVVXRZ?=
 =?utf-8?B?S2J1ZWhNUkNzRnFrVG9pRlpXdjlBV2tFSHUzcmRSU1dkNTl6ZnlWOWNBNXlI?=
 =?utf-8?B?TlQ3NlBqQmxwM1Rkbll6UDVxenhDS3ZGOUI5Zk1sVDczcmxBZFdlY2hrK1ZW?=
 =?utf-8?B?NlZudDZ2ZENCa0FDdHY1WTJXc0EzdStnUit5cVFGMllpQUlaZnhpMldROXFl?=
 =?utf-8?B?Wnd6YzJnTEp4aExaWGZHcE9wOVhySlZaL0VXOHFGVGZhOWtIM3lGMWxZcXM2?=
 =?utf-8?B?RzhzSEI1TlM4NUpyS3Q0eFFmcnFaUjEvckUzNlFqN1ZBQlU2WEdjVGlWa0hO?=
 =?utf-8?Q?/AOXE4R6mLSICClo=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e6dd4d9-435d-4e71-28c8-08da3cd261b7
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2022 15:39:10.9194
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /1YSSagz9hWCoK2/woK4cC0fJ/fDFzWtBogdx5w2drureBr1cY8r6j/pno5IG6UOhdNNw42IJILEGPz6DgtounycUeOIcUbG3/2VKeky3/8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB2821
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.486,18.0.874
 definitions=2022-05-23_06:2022-05-23,2022-05-23 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 adultscore=0 bulkscore=0
 mlxlogscore=999 mlxscore=0 malwarescore=0 phishscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2205230087
X-Proofpoint-ORIG-GUID: iqTSQah66SChis1Dh2pg9uXNWRi4lSSE
X-Proofpoint-GUID: iqTSQah66SChis1Dh2pg9uXNWRi4lSSE
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=iRyUcDQi;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=QeO6nsYA;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 5/23/22 1:58 AM, Dan Carpenter wrote:
> Hello Mike Christie,
> 
> The patch a01ff1e161ea: "scsi: iscsi: Remove iscsi_get_task back_lock
> requirement" from May 18, 2022, leads to the following Smatch static
> checker warning:
> 
> 	drivers/scsi/libiscsi_tcp.c:649 iscsi_tcp_r2t_rsp()
> 	warn: inconsistent returns '&session->back_lock'.
> 

Thanks Dan. Yeah, it's a bug. I'm just waiting on Martin to see how he
wants to resolve it (new patchset, new patch, or patch on top of staging).

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/d0e54ea4-dfcd-8866-a736-d9b6de29ce9c%40oracle.com.
