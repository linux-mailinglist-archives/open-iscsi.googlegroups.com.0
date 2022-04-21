Return-Path: <open-iscsi+bncBDIZTUWNWICRB3PEQWJQMGQESZASMJQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id C74CC50A39C
	for <lists+open-iscsi@lfdr.de>; Thu, 21 Apr 2022 17:04:15 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id t15-20020a17090a3b4f00b001d67e27715dsf1014901pjf.0
        for <lists+open-iscsi@lfdr.de>; Thu, 21 Apr 2022 08:04:15 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1650553454; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tslj1agAYImD0/yq8lvYAwQRa5lM27IIuDK7vAcntR2MONMNqgm7guAiBzTuUPs7LA
         CQDzlBhV5ASngQoX+/jkqA3LaShW70iyap4eKTQE2EjSsfuAfYhrn+hGAVBVKL/DoMUO
         Aiw7joG3FiHId63aDRixe/T5jGICDhPbhH6NUUbJQI9iEUya7TJj/2rEq7bkpVkd5Tah
         4fFKRRimn1SlqOexSFEeZ7W5MsIyJJEKP0P49MxNGvzsf60388UnIj7daeeWM8c47EwV
         onBttZFOU1R8WbUmL8Q69tDPXlZGqh7fDpO6Ax4mf4hOXMEFuQ6Caa+Tf/ZkrDiPijCs
         Kzcw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-disposition:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hB/fdzBtyP6R+NbnsRsks2VHg1QwvlNR2oJjLB47pVE=;
        b=yhPxO7noSHdIDTLBcm/v5vqB6VAvMiQm8P/OZsa6Xb5N/ogLmZseC6pNZW9nNdNocu
         /rjsnU0Mw5EUkWssshsFLqxK96cpyrLxd7SZJQpDGkwDWOHYa7W9xhRM3QXKdrI6GN3a
         VX6wICHTGo1K3cUuPoTlu58/ZAzm63R3KPG3q7ujkG9yYlocQGS5FNA3Emwm/utoIGkR
         7FNnhMTJqNxAoKdCH9WFgt7a5ezvU9NQnm+snpulX92y6aIFOH4siF3+f9CNMtHo05uQ
         EDGYYZ8/XCkoHIhMJRUoR7CzvLHNdf1AAjDva0qBKmREZ6LyH5c7jZZAQ/cZDos0jeNB
         1QeQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=iOb1ZzgM;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="XD7BI/eu";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:content-disposition
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hB/fdzBtyP6R+NbnsRsks2VHg1QwvlNR2oJjLB47pVE=;
        b=kg2d9H1/e6EUk/RNvTPCrdU6IDAzyPXXsGkAG79s3bparcZmmJA3FB0n1FVu4wjZMH
         TaTw1M0qMATCQwGl1gKcWB0yUoRe2IuOS4Q0vJnKpRAp4CYVKRq6HuHe2yWD1E9oTowX
         d7DAmT30DB1QOXP39XAyF9YwmU97vIThjrvk8GMTbNRJ7QREu03gfvrUE4/rkTb37D3t
         95JaA7lOIfcrY3lfbFBPeEXXjjDByBU3Xb6/tOafBKDnSgkd+A9t+DeMqzhMzTOaMDHE
         YjTbf3IhHXw/lv/0CBfBI/oqqTYxvx2nXQX/4o1wpDCZKVzGJ/JzO30CZOjGjFQHpbpH
         MFMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :content-disposition:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hB/fdzBtyP6R+NbnsRsks2VHg1QwvlNR2oJjLB47pVE=;
        b=aPBm5TXJai41POtbzaG+a/VZCDRjFHf3dgRvdpIf1gvy5aLKE7/gh5RYOF5QBzPktu
         rmBSH6w2297EnNxtDaonVUSWWnXaeI3djW0DwabC7sk3wO/dVj3CDPpC/3wmDWzJVtzP
         nxRh+TfLff38bm3Fl3Lr2p9NsE4EikUv7CzoVOZynQUU+rZeQMn1OCsiLnDRxHpSV5LT
         QuqYvfDa3GWhlbEJBhYw9jh/jM4t/LFOC4G0Zn2L3tSKAd0xOKeUUgSgYPD9FJE4092s
         Q4NBCF9ZN9OCirv77Kf5/UrA3ADihF69AoF4gUFmAOniGKZnsa5z1/1TB1EW7+TcRi8F
         HPog==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530WwsOUoqOwVh8OQct4LjCTVumDQRnHWL/3nX3xFkGaF1F55uX9
	bSfK5Yt84jMBXojbjnbdIzg=
X-Google-Smtp-Source: ABdhPJwWKxCMh3CUXz0AiX//MwWdlusxE1YVlNOHG74RF6cT2Nv3BNsGFah2EY2YBuSrAwU87s1I8g==
X-Received: by 2002:a17:902:7c01:b0:156:17a5:a68 with SMTP id x1-20020a1709027c0100b0015617a50a68mr25435779pll.166.1650553454398;
        Thu, 21 Apr 2022 08:04:14 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:6782:b0:1b9:7c8a:8c03 with SMTP id
 o2-20020a17090a678200b001b97c8a8c03ls5149175pjj.0.gmail; Thu, 21 Apr 2022
 08:04:12 -0700 (PDT)
X-Received: by 2002:a17:90b:3b8a:b0:1d3:197:1087 with SMTP id pc10-20020a17090b3b8a00b001d301971087mr49168pjb.239.1650553452498;
        Thu, 21 Apr 2022 08:04:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650553452; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jh9f4v6dKXwXEiRsUe50s9hToNizPvzb9Ab1t7FoSjgg/yEsv470HrH8++xuVKRBV2
         4BqA1vKTpeATgVLuIudQhEka9ifKDjnQf8vUsA/p2WVUDItVmPMBkLrDnsNQoXkwTGz1
         9epQn0v4oZuPqpIdzzAbr9bXnjbNCGiFc7OHpzoUgGRT0smh+KOJnkeanRHt83GBn4pm
         C5pIHpE++sjcGHmbk/2DKlL66Qbl/WnbSvpkGZgZ335FJq6SNuoZj2jsge1U/wOwMO3s
         PTOgWJdF6HhlE8fQuoU1YbyK7yc5z8ITfQZ9xOhoOoDd5Hl/y9dx++tJoyqVPPFIzzbh
         nRwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-disposition:message-id:subject:cc:to:from:date
         :dkim-signature:dkim-signature;
        bh=vF3JRFTTLVW8Ssv0Z2oJZnJlp7lzEHCg8bDIjNShw5k=;
        b=jxY9lpNJ019pVURh7YzUMMp1dkGLPhqF+OjE3vZFwaptz3GoXaqichhEJWq6EXJ9BR
         KSCg7On/OU2Csjlcaw0VtCM2zz3EthdUEZyurI2YQj5Lvl9r1ut1wZtam29MioutDxpR
         Ry7ky/uuUHciCDg7nnb4XpUFhyk2wejaxnK9ymS7gPIdB8+h4LbfxXYFmZocCJG+DAEn
         XyOW8wqMqjE4pv925YeslGAa4/lSbuAjh/7Ow/vu8SBYw9zbpBjzfAe5lAoOH4eUbdfg
         L8LnpvrArytrLIPwIx/DxnW5Y1LmZsSzepP84QwsMmRElbK+84uQRJBTjnCVdaC2i0Wr
         KbXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=iOb1ZzgM;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="XD7BI/eu";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id lr11-20020a17090b4b8b00b001d287ca0f17si530363pjb.2.2022.04.21.08.04.12
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Apr 2022 08:04:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 23LD1me7020622;
	Thu, 21 Apr 2022 15:04:11 GMT
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
	by mx0b-00069f02.pphosted.com with ESMTP id 3ffmd1ccdn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 21 Apr 2022 15:04:09 +0000
Received: from pps.filterd (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 23LEuD2t006582;
	Thu, 21 Apr 2022 15:04:06 GMT
Received: from nam02-sn1-obe.outbound.protection.outlook.com (mail-sn1anam02lp2045.outbound.protection.outlook.com [104.47.57.45])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com with ESMTP id 3ffm8btey5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 21 Apr 2022 15:04:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gmSeVPOBSjxhtACoQJ+d4K2xKoIwd4SbRpabij/diiIPF9/4HiK7r8K6H10qMs9Qpf1YZZxFQWnx7RDkse14MmY6m8Vfj+DanUD4JfYhIH63SoCiVrLKWDjwjjci+9a1Bx/JM323MOMZ/mgm3zjUkHrdMkAjuVbv+Bvgxj9eoXCOVGLpZR8xMuhhGFeSCspTMnMdHMJ6cqoIZv7X6qjRXxlZvRGpOYbXTjkhKGa0TDal6p8298y1O/fgLvrANHjGmqQoBXkhBdfMXw8CciAuWd2FLkYAM/PZ+nIolVm1C2ywVNfSgjpiOFz3c0nutVRXCab/9LZ5JdA2eFp1ADVR2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vF3JRFTTLVW8Ssv0Z2oJZnJlp7lzEHCg8bDIjNShw5k=;
 b=YwcnzXeu3nUuiBHtKAwTs775VzkCwL4H/NY5aO5EbbSHxrdfWta8uLP5v4PIZ6QKIkkoMbo8gDsslYY5Gvx/hldtdeoOcxEzJHRYgE1V8YR54lpHpQ/FRorVSdZYaoWzASopaNuVJHuDmsAHLnHXWRcggNiiSvSJa7ld9nS17+GfeaqIZY3Vz4bI491N8qQHfuv5WxQwvKaADVdDFW6MRVJE0z6CNrqCn5S4fg+c4Eq1mzO3/XMpmJoYxoQyow4N807/4Lcfzt3YEYHhLqEJHrD9NAQnpGHWmW59q5N5QpBKcM5dDmO08u0kMDJv+kmcXNa6fHI/uanu78n+GTYG0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by BY5PR10MB3763.namprd10.prod.outlook.com
 (2603:10b6:a03:1f5::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.14; Thu, 21 Apr
 2022 15:04:04 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::b5d5:7b39:ca2d:1b87]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::b5d5:7b39:ca2d:1b87%5]) with mapi id 15.20.5164.025; Thu, 21 Apr 2022
 15:04:04 +0000
Date: Thu, 21 Apr 2022 18:03:52 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Lee Duncan <lduncan@suse.com>, Mike Christie <michael.christie@oracle.com>
Cc: Chris Leech <cleech@redhat.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        kernel-janitors@vger.kernel.org
Subject: [PATCH] scsi: iscsi: fix harmless double shift bug
Message-ID: <YmFyWHf8nrrx+SHa@kili>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-ClientProxiedBy: ZR0P278CA0062.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:21::13) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ef2c61b5-8e32-4d30-43f9-08da23a82ce9
X-MS-TrafficTypeDiagnostic: BY5PR10MB3763:EE_
X-Microsoft-Antispam-PRVS: <BY5PR10MB3763A55AEEDFAA3863A4EDA98EF49@BY5PR10MB3763.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2Ii796dVVhlfjUD8As6slB8BbN2CvM5RVfT0NzYmEuPBf0PQJh3Nj5/hj9Wv4ke5uOekl2YQOtNj1kFjzh+l/Sx/VdwNbkyV1GGxUmNkWC1Lj5ZGjAeJsmDXjhxzTfxdX6W5NaBojijeOgqgaUDBCoSj9PYuMt21OLC35V3hKm93vmFWJ5850emzCde3Rg4yhjzO2pSVd1naJSptUUPWD0mFXm4Hza6z7kwHiFBobhiz91jQR8rdMA625Qpql3wZhUZ5lYwSVzTdndftIytJMfsZVFADguqZnx69iZC/jFKwA9GObo0LxbTAK2pBTYKbQGgJo5dK3YLCycGNb0WvML5gRKo12PK5ZOCQvJ4QGKKwfBMA7y6yQoyvumKJWHpqleyClOEYD5zaygg+EwJ0x/fuUEEVzmT7fzceIAWyP8b7gcGUPl4GMyLKlnhx+yiKF1/t7TRS/Z4YlEBFKzdLLtXcLMhfG97KWaSsfi9F4MYAN3W+C1HyDMrgn4X+LU5Z9O1nPIUqcJmGn+BWlwdnabAkCafn5UYMNGXemBF96F4XCq3qbBfYLs7VnLMQ51HEPnTBDzYw+8j/2X4ktwpY/GNw7kF2t8HoqXnTyLofZh6pHPnXInHLlLPD0Nb2dqx3YJCAz628MUtN4Aia5ZHNhCMxr14+rKQojXfyX0mUaqPzPcUBpyMflXrJ7YU6Jhgoi8N5nBC/O30kUeg1zvGfGOG6kCA+DS3S2lad24M/rsc=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR1001MB2365.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(7916004)(366004)(6486002)(38100700002)(38350700002)(508600001)(8936002)(110136005)(54906003)(86362001)(6636002)(316002)(4326008)(83380400001)(52116002)(44832011)(66556008)(26005)(4744005)(6506007)(9686003)(6512007)(2906002)(66946007)(5660300002)(186003)(6666004)(33716001)(66476007)(8676002)(67856001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+SRoUSITzRZl3kJ/LZDlbuOSE7uiN34588p0ZpzDPfZ+R1PtNFSeNUL6Wlja?=
 =?us-ascii?Q?EUVH5J7Fv86xgAmv3LxRnSVppQ9+aI5nBumVuxR/Cw8Jwp5xDO0GAyuXXMKa?=
 =?us-ascii?Q?PX4qW9VRrPHytUXNJ9NRNR1TJS4V8GSDp8DjbE0zLrqGg4bgB5qQHcafU4f4?=
 =?us-ascii?Q?7l3cP+kF1Z4FO1rMfw8TOQ75sw06HX/KR99V4xDE2sKeqZHsydIDr0n+HenI?=
 =?us-ascii?Q?sWa4TqwI6NQO7wdlQ6QdhicE2XRm+Yrkmq1isjCTUHObJtiI5Vbr2RGgbpc+?=
 =?us-ascii?Q?XaunLkiQXUGAvqBC2YdoVRySfOOibTx6ApoMCc3ykzwNVyRQRurjw89Bo9BA?=
 =?us-ascii?Q?5GtkdsPj6X1oc80lveIXRFbODM5mtF72MoIzYsv+LcmmC0zf2w7WgOEZ6VrJ?=
 =?us-ascii?Q?St4kI0A5NztpT2ofsl1voo9U4Y86k/9v15ixAG53tPlUt7IgtL46febQtjde?=
 =?us-ascii?Q?hCgG+b4mA6Mj7Gbtei2QoPR8eMyiP5Dpt0r/bV15FBWFcgUegbMi1XnLOMtf?=
 =?us-ascii?Q?P8sS2Y05eVTDdVQUHd4kXpZdi5+ExenPKUQF7fMH9IABRZBK/OAafvJH9U1t?=
 =?us-ascii?Q?H+iRv1iicgYRcDf6GMXBPOXGuRWKluiKQXSh5SY3CP4lZqfOw2Kj1Tr5DZHc?=
 =?us-ascii?Q?2cz4mhR6zxMZLl/PBsDw1CP+NqNDPJmr2m2XF2gZ+F8NIVeovp/yo6PHn4HL?=
 =?us-ascii?Q?+E/+rAKH51aC4um2NscbnsALGfF6BdCmxhBTFS2VrrjkEBmeg14tk40o9S+q?=
 =?us-ascii?Q?3qwTkxfZiANeIHyeqMabvBe0ZYC295npf9Mt3D+fEY3m12W2qRTIi5FkYQrf?=
 =?us-ascii?Q?c+WIOfXmL+2nmHX7UmFoLVseLvI1aDWCsKNJgLV+2WR+NiL6wdjM55xn46yk?=
 =?us-ascii?Q?JWFNI7Rqvg4ilnIbA5f0Jd0tZP92QxxjpoiZUs7a6Zde9T1h+ZmFDrWrraNV?=
 =?us-ascii?Q?o1f4jTW8XvJS2Zcr4yyGzFZ/CPkPINa9CzI67esfXiG5DWGqVcXuKF60p+ce?=
 =?us-ascii?Q?uk12DPMv8u+bvq/e7x05KV+j9JxwoJD+V6JtPUlLUYT9wJ61epC6fA45an6I?=
 =?us-ascii?Q?eni+TIKJ6ppu0uf8apim5WibZn6Uq/TtEvTfyhgF1YP/0T9w64uzwyUSGGnv?=
 =?us-ascii?Q?I7KA8fX/2TtmA3ryZR/YICOA9o8MqR8b0mVHyI4tzf/bcz8LTeujtJH6UsLQ?=
 =?us-ascii?Q?vP/GdZ1xDX4NNjzq2SzJK5xSxDswuYfsLqg8AMoJ//yAdqnuuDGkJ7KrqGrK?=
 =?us-ascii?Q?SYAszLh1gzp+jbJb0OkO4KVmmvDv7HrTMHMFsW2Qfdz96LS5wgQif41PqGS6?=
 =?us-ascii?Q?1DkUBDlfQz7yf57NTzqXJZEzOY9hsZZmD1Dh3hDTvqNfzCTXMTuh9hpNOZfY?=
 =?us-ascii?Q?aHMqsAyeUxPyIF3v2vP0K6mtlnc/WrhDP4p0RoWiAlZmOpkUdNfYjKkAnNDw?=
 =?us-ascii?Q?HXM7WTRpertVaBCrXNNFFG8HRWdu4m9a3zPK3737FMw0LJ/ArwyYkeY6QTyt?=
 =?us-ascii?Q?VjIgrz9t4Fw5T5rESxxfC/pCx6N1ZsxuumOl0o7VIkaR27HI07Hc8t3j468t?=
 =?us-ascii?Q?RViEYRLx5Jq2gMPZlwAYmE+lmgYde/T2GF246A2ONNlwF/xUvQyEe8SfIwgf?=
 =?us-ascii?Q?WFZJaICC+7LhrH9wzr5NgtFMU4VDFoeWmrsDBUXTOIlJck6gLH6iTbjwQEdH?=
 =?us-ascii?Q?OGJS8IDKwOHPuJhI4FpHdocVqzJJI8eFh/E3f2wMotbEX11G8yVQpFa2jGJh?=
 =?us-ascii?Q?PrrJpgGtEjIAbpVPlBKItu3zAiCSJH8=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef2c61b5-8e32-4d30-43f9-08da23a82ce9
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2022 15:04:04.4277
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pxZksvPQwYhtkLH1o3w+dsH72WOEjZ1PL0GhVY7aAj6fAx65nM/PobR6OYFLYCr9ZWtLfvZlw2Q3rFrwPjzI4D4HBZh59PEv7GY9gbdpZcY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR10MB3763
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.486,18.0.858
 definitions=2022-04-21_01:2022-04-21,2022-04-21 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 adultscore=0
 malwarescore=0 mlxlogscore=954 suspectscore=0 spamscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2204210081
X-Proofpoint-ORIG-GUID: Vsh3MrLZPvuQ-r3einaAdwS7Umkg7DAC
X-Proofpoint-GUID: Vsh3MrLZPvuQ-r3einaAdwS7Umkg7DAC
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=iOb1ZzgM;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b="XD7BI/eu";       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
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

These flags are supposed to be bit numbers.  Right now they cause a
double shift bug where we use BIT(BIT(2)) instead of BIT(2).
Fortunately, the bit numbers are small and it's done consistently so it
does not cause an issue at run time.

Fixes: 5bd856256f8c ("scsi: iscsi: Merge suspend fields")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 include/scsi/libiscsi.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
index d0a24779c52d..c0703cd20a99 100644
--- a/include/scsi/libiscsi.h
+++ b/include/scsi/libiscsi.h
@@ -54,9 +54,9 @@ enum {
 #define ISID_SIZE			6
 
 /* Connection flags */
-#define ISCSI_CONN_FLAG_SUSPEND_TX	BIT(0)
-#define ISCSI_CONN_FLAG_SUSPEND_RX	BIT(1)
-#define ISCSI_CONN_FLAG_BOUND		BIT(2)
+#define ISCSI_CONN_FLAG_SUSPEND_TX	0
+#define ISCSI_CONN_FLAG_SUSPEND_RX	1
+#define ISCSI_CONN_FLAG_BOUND		2
 
 #define ISCSI_ITT_MASK			0x1fff
 #define ISCSI_TOTAL_CMDS_MAX		4096
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/YmFyWHf8nrrx%2BSHa%40kili.
