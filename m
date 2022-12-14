Return-Path: <open-iscsi+bncBDVIJONZ3YDRB3XT4SOAMGQEFPDU27A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B9D64C25D
	for <lists+open-iscsi@lfdr.de>; Wed, 14 Dec 2022 03:50:26 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id i19-20020a63e913000000b004705d1506a6sf1021110pgh.13
        for <lists+open-iscsi@lfdr.de>; Tue, 13 Dec 2022 18:50:26 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1670986225; cv=pass;
        d=google.com; s=arc-20160816;
        b=odHZY8EC9h1UEMHt97YlSVcNJe7Sv15df8gV1705/rWiMYZZZPUxgL/1gCTNL1OW1u
         XWkupNp3TBuxhb+sY6Epsp24U+RWPkbGEkD0pAshr/olr8p1dGdBwwQcX+eXHl/nvAB5
         E9giessR2b24qcGGiJ5pll4vzU6XJnJgoXgQcu/n2R+d8KoB/Ys5Z5Hp361/v8nljJVB
         xwqe841fkTjUYg7GkaWKgrmhyYJS1Wj+ARYJzuoTXO40pLV+X3wrw7MZdluCaSDHICPr
         myONVyQ4JKUTRdrHp14lUsSntZ5S9BWCeMMRCTfOYKHygnn5+7L5MYGvk+8GzP1YgVCU
         AQ+A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :date:references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=r/36/IRNcLk35DeFJ+1UEUCWsQ+n5A8YMO7YW1825aQ=;
        b=f9sRpVg/Yr+JADT6z9QgacSiMP2SMC7X/AwCr7+NpisKYBq4J4AhYTp9vnm//B1Iu0
         a5V447xqST+vWs+zfZtq7ny9FqsI5ThmXfnBl2ITN+qr5kde/zM+tGDmkQK27bDg5f2c
         1mr1BC8sX6owDmLiM7DB0vmJ9ECm2UjhztJyKaxiOJfUCZd15OlHcRImjuQjxnQoBXt+
         UYu4FfXwhsftIAn8SiDiXCTBjYsdhqhNerSMkbBPz8gfhuYhraakES5ymZ4lr2UQk8Y2
         9F7Gu9he1L+tlnUZjoWohUZecFKdEJtBMduQ952P4zaHVLcCPucvcCUHozxObMQq5F3y
         hsog==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=xjT2rkB3;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=qSPP2Ctc;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:date:references:message-id:organization:from:subject:cc
         :to:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=r/36/IRNcLk35DeFJ+1UEUCWsQ+n5A8YMO7YW1825aQ=;
        b=difEcCn/Hys+XorbYFhNQaTgCVp94Xl+tI/reUjcarxnDOb/WJ0Q9o62NEabl+vZBT
         NF57u+WWOX9e3pN36uO5bmkUeAy0yyajgIf776L0SYq/fZNGGSOAynU2K2FH3/1LxyU4
         kP8lYBZv4Dub5CHGELL9daHLFvwNS4MYYYpdKfqVEiCaT2NMkJhiEfYW+fNTTEPx9pQp
         dsFLYcoCCqCoklGaUOtywGtZUb3MWUOh/DeSKEgPnFdUWI2lk+7+wz5t0AClj8FVKpkh
         fongFwsFVBNQxXM+qT9M8cBAlHNK+Eg5gKo0w7gTyvEoUngMVTGNgWSt/ZPyaD3ughKs
         J3SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:date:references:message-id:organization:from:subject:cc
         :to:x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r/36/IRNcLk35DeFJ+1UEUCWsQ+n5A8YMO7YW1825aQ=;
        b=j9FVpJcoV1AcEEHZpX9cKI7u8+2fXlT6mCP2sDrr5n3gzhr4bvgkm/MFtDdsGQNrcx
         2oPCp/zbj16f+WYHL1T//2ajqDPIVtosychDjeBkyA1DJUMVPWiURvNaaACze4zkIU0m
         KiWg6vdqBSm2Wdx4QCiN5BWfn6jVj8hUhBuVM3lqpaHuf9nEIx19xeo6G+6pVLApItiN
         a6qSBRLsWOVfRC/28QyUseIGYvfPOb4RQw4MwCbGCrXN+E4LIVCqkQ8bpc4eLO8gIgr6
         vzv6m1t8tr9831Tx57qQCz3MuOY+2jnBiz2T77Bt141QJSlgc1Vpnf3rktFn2L8D6z7c
         zukQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pnuUxboKjgRkyYgkXTx0lhOKwglKQDrl8FcBNgGtXv/AUWoahXL
	3FgEKLGDnFK1tbup5pqHCHY=
X-Google-Smtp-Source: AA0mqf4MNMgleilGrAB5/YrB7z1gdtgSik2TLbSwSWkyoa4PQhzCi3335JIUEJbEInUfLR7fkTgVFw==
X-Received: by 2002:a05:6a00:2186:b0:575:d7f8:40ad with SMTP id h6-20020a056a00218600b00575d7f840admr39836341pfi.50.1670986224589;
        Tue, 13 Dec 2022 18:50:24 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:1d4a:b0:214:246b:918a with SMTP id
 u10-20020a17090a1d4a00b00214246b918als24537013pju.2.-pod-canary-gmail; Tue,
 13 Dec 2022 18:50:22 -0800 (PST)
X-Received: by 2002:a17:90a:d310:b0:219:ce62:7de8 with SMTP id p16-20020a17090ad31000b00219ce627de8mr23641525pju.43.1670986222093;
        Tue, 13 Dec 2022 18:50:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1670986222; cv=pass;
        d=google.com; s=arc-20160816;
        b=a3Y+jDMrOG1D/xD5V3LG/fME4jHuCwvbd4FIS6IYbrIdI421d5P8gaX1nhNA7xcdo2
         EjSauw8BkQ0d5FcIsQs74MAKZF7R9wibUn4WoGJ1PAMWTZCDchzqw9+iD0vwBWdWA+zq
         hcmDMUOvzCzjYFsK7nmZFyuWPbvNH0u5X/Fq/lrPZQ70kS896XBCjKXiaNBvUyXQJnxP
         I5q4sviZdJ/ejIF/LDVGJDmdJWqL6vpYqCdjo7DV3INQZk82H3qcDnGi8/TlTZaMfR5y
         yh5QMiDhGgnyzc06hdBZScEjsyiPvcoM3r4EXHuSuJ/3hgqNeEWzi4UfYKZMew9RCHze
         FdTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature:dkim-signature;
        bh=UTyr8jSAo385jFaeNNiJsMbfl+Ux0es2JRheIaj/UmQ=;
        b=RIiRwEby6lYKU2rUAHNOzg78lTxRVbtsTsIC7LF+sxmaSk8RqhxkOMa1KRtkFo4b3C
         +s1XgbPBzQyNPGFYH9Kx/k1tutTCykxLz5bOo8tf4h9zvAUtefOhQG9GmlupgcSSU3cY
         +VZjXGzTAQ69rIcDQtYSK/qCCsyD4mP4H6Rf6EbYkyWMu58srps8ZoagwJp2yStTdL7F
         N37fS/9sHsku0ZAnYYsdHptJX4GRhc11qemhQ4OucuoVqrIwgNtViq9MhmaUli6q67k6
         WPI6CARLlABjITNOpu3ebQVE7nS3OZGMTOeMJpf3ZLQVb+uTBRKFOj8aPtlsVYjQkZar
         zmnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=xjT2rkB3;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=qSPP2Ctc;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id mm21-20020a17090b359500b002195ef471f7si49735pjb.1.2022.12.13.18.50.21
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Dec 2022 18:50:22 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2BDLOBIO014289;
	Wed, 14 Dec 2022 02:50:21 GMT
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3meyew8u2g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 14 Dec 2022 02:50:21 +0000
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 2BDNoH8T011712;
	Wed, 14 Dec 2022 02:50:19 GMT
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2175.outbound.protection.outlook.com [104.47.57.175])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3meyep08uy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 14 Dec 2022 02:50:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D+SFlbG9V5ginYXORZIVDRxYvxxKMW5YNFH8WYWSu5hvsJq1dzs9pGvRs8US4sGj3XAbn/M9XniZGRjhSL1O0DD6wRKGpMGSnfE92W31XSYMknm98IczBwXzv6egKZ9maTUoM6fzm+4ev80aGsyduW1KFGJnG75uVG3ETamFF2QOtypOVwU17TyP+hi8EQvAsWeNnhhm0xEkImTmzFpEIrQSK0n8+u1YlvPgvuIhNHYiVCzUSQNUAJzNiW2cnBH1AnROT3/1KKZTVWqm4YMKkY0hrdBW8+kdIShBwdKjn4fz/ZIs+wbUKbQa6cG+U6ZfpiEPkZJqJypdm0zb5oErbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UTyr8jSAo385jFaeNNiJsMbfl+Ux0es2JRheIaj/UmQ=;
 b=Avi92wF3MMftf0rlhqNmYzUVik4P8QLEiiVOShIUw2XJPW6ONLEumot14icQaVgZnDiXIiAOAH8GUKpKag+dt1whHcoiepqIp4hZltURZiLfBh4bJoijl8Hgr8lP6tY6T5A+yTDoghPyd6XXw1Vwaw74Uy3aA88FYK9Vp+dM7g/lHY9twvvCqVdxqptaA9Y5OvHpl2KlApss/ngFKHnkIm6c1AJ3nhw6gOExZhvh82chjpTpXhYHfhAAY/PnmETJWJp9BavnkMNnqwbtXUaJdMqe+VkvZQLrDU5aadpjZFNK5/D/LFSCx5yM//R5UtTXyFPvSDTE0f1Vmmq9shzkXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from PH0PR10MB4759.namprd10.prod.outlook.com (2603:10b6:510:3d::12)
 by CH0PR10MB5306.namprd10.prod.outlook.com (2603:10b6:610:da::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Wed, 14 Dec
 2022 02:50:17 +0000
Received: from PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::25bc:7f6f:954:ca22]) by PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::25bc:7f6f:954:ca22%2]) with mapi id 15.20.5880.019; Wed, 14 Dec 2022
 02:50:17 +0000
To: Wenchao Hao <haowenchao@huawei.com>
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        "Mike
 Christie" <michael.christie@oracle.com>,
        "James E . J . Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        <open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <liuzhiqiang26@huawei.com>,
        <linfeilong@huawei.com>
Subject: Re: [PATCH v7] scsi:iscsi: Fix multiple iscsi session unbind event
 sent to userspace
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1wn6uem2d.fsf@ca-mkp.ca.oracle.com>
References: <20221126010752.231917-1-haowenchao@huawei.com>
Date: Tue, 13 Dec 2022 21:50:15 -0500
In-Reply-To: <20221126010752.231917-1-haowenchao@huawei.com> (Wenchao Hao's
	message of "Sat, 26 Nov 2022 09:07:52 +0800")
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: BY5PR16CA0024.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::37) To PH0PR10MB4759.namprd10.prod.outlook.com
 (2603:10b6:510:3d::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB4759:EE_|CH0PR10MB5306:EE_
X-MS-Office365-Filtering-Correlation-Id: 68333f1a-3119-475f-6034-08dadd7deecd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TK5IZkjOpT57cmkoAvoywfj47LMLhQYsOKWBlEn5Ngdlcsl8yvK4+27knzawe1m5WQhae5Ju3DioadgzzJHl/MlOb/Buz2tJp+51BlpF6YvOVjTgaD7JhJouQk1lAEcC+HIyMRNQB9NIJszdNHl0csm5uWSOHtnsOKWAf4UnoXXwhHwqR7ATqmaQpuffTRIvMzqTgyxmMyLlhOJshJLmxPWsytr+JU67SzEWaRL5CIkcXZmK/OSXT4vBspSBYuMXfi2jIshFFV/B0WdYGkbYf7Kry7yOCbHbq+xDZsEiT2YQXkgRyU6VmH4ku1HOjNcYyWfcPCGsEU1T/byiO38E5S1Ej9IHKxsX1NgFAyh4qeDHSraZ2RZkXPCgq0XYwhNd8SGFDJh9z2a3PAMVkcDdSpFqdpP+W7v4qWQUXKUw3cJCcxDdGA+EKHpMbsajrXk3nnUwuSal0hULJTPfy3kUY57efh7juHHw1RepCK7Qf/cCBmPA8yq5QPkJsKvJoxpxTAqQFY4kkOa320YIrEsPfTii80kQiEM4c95+AQFkfPkok/i7MYYmsR/qpquSqfuX5Xz7DgbAS1aXYYuASfiuHgC0FaF5EM1+qVniBn2JYYNsPBPJtEnGsuz48JGkxgdSaDPCpQNRqBqQCxdQptp1mg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4759.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(396003)(39860400002)(346002)(376002)(366004)(136003)(451199015)(38100700002)(41300700001)(86362001)(36916002)(6486002)(8936002)(478600001)(4326008)(6506007)(66946007)(8676002)(66556008)(6916009)(186003)(2906002)(54906003)(316002)(6512007)(66476007)(26005)(5660300002)(558084003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OrrEaoS81uU/tmHEJ20Cc4xQPNxj18hu8A11ndlJZaSv08VXtH2VzTwkyu6/?=
 =?us-ascii?Q?AnGgD7LcwDN5YPgn/GIORgDzFvBAFndvKsZuzONzFXAcuxyjblecx5cvjSGP?=
 =?us-ascii?Q?JbEzKGPgB86BNBiHPQuVXj3uyd8i+dgEmUI6ZQ2scQOlGQaxgMaL+W/H/HLi?=
 =?us-ascii?Q?Odj3Z99gnnjLyvDJguxgn9rFMDecY7LtQn1R3tJea6Bo+llHshRY/IGzhikd?=
 =?us-ascii?Q?hsVhWMTMGVSo+gxDHFGEF+nsryt5R3WR7pq5f3+/1ZDrmgYG4oFvvRf1HpxU?=
 =?us-ascii?Q?9Wk51h5ZdnDjrM0O2EVqpugMf91Ycx20pm1xogic28Zt8Nc1aUx8jkyNBZLg?=
 =?us-ascii?Q?vrH6kl+i9SSP22UgCYTARtrG5jlc85KtAsMEXU7jdHXXeFOqpT7B5tsLgOsF?=
 =?us-ascii?Q?2wdzQbumCC5bvW/vC+fxEbtFgpXPZMnmGhnAE9WeVZtrg6rHck0jtORA7IdM?=
 =?us-ascii?Q?64GkJbSGLTYL4b8PlKYD6SDJrhAfL/hJ2qGKPvtTZgiVdEMI/AHRxv5QPTGL?=
 =?us-ascii?Q?WjBA7CFZzjgdMfOrKUpamGSyUTBV34IsNAblhfm+gv1Q31sIHR1noSB2azo0?=
 =?us-ascii?Q?7Cfk84g7fgkld0k0PFiFCv3t4AzgpNYSnKDG4SH6kTh0tnM7kZj914PP1uyf?=
 =?us-ascii?Q?iGpbVbOi7uDSo9KlJW6ezhhOnhujGNIj3x4JCQ0ZBT+m6hmUw5VXfswlOLhV?=
 =?us-ascii?Q?UCPsJ9a0IEC9s057AFSFZiCp9DUo9DCPiPD3Nh4CkHLh9fVcfX2F5FRfCbMD?=
 =?us-ascii?Q?w7vmD9ySe3gXCxe/XB35MybVwych5cCseB3xoJcH1RflduMqCswg7vBWatgh?=
 =?us-ascii?Q?A6wpIU9S/mEk8grmFKkUnX4zHGhvLadDFn/u2ybtq5h7zPuv2yapcbtPLxz3?=
 =?us-ascii?Q?G9i91zsFHM/XCSy28aGyWdzbUXd5LZJZpwnchflxVDPagtX5EcxjzLjGlRf0?=
 =?us-ascii?Q?iHTK2+LCbH8A8Y9e/+n4Vo+dUS8PbKbyf+pL6uIT38UE/RnacfV/wcHP3gx/?=
 =?us-ascii?Q?E/S5GaHYm6rJwQ3dszRg23UZ3pXTmY1gmDqi/pEe29WU31DTYJ5G5IX5cCP3?=
 =?us-ascii?Q?d4zvmreS330+MkmkgRX8Cp9loDsNh9vtmG57voj08s5AhnKdQnULxkjKR9aO?=
 =?us-ascii?Q?S9wH1ayT2BLd0iEgjHLgRgWSoyy8zdvRIm8tVKl2DLJDoW02479wrI8nNlCW?=
 =?us-ascii?Q?2cUcuG3axq1hA/apBgx8YwlO3yESMRJtdELX/FyTsIJsYPp9srPqGQeMwwUl?=
 =?us-ascii?Q?o0N2gmiRhocd834g8uBIHplRXr2WN1IsI82LKTdyhnh6mJT3kVWYsDL8djFM?=
 =?us-ascii?Q?fDMbO5Kdmy2THp1ubCCkIZQxsGcl0eBy7w2JV2TK4HJwkZ+vXCoau+9HzNy6?=
 =?us-ascii?Q?lduHcceoo4fmF3fz6EXuHqHfSO6LkXYKH/zFbSKTazRGkx1h6ho0B1fO1jLF?=
 =?us-ascii?Q?G/1dzhXvfWiNzYFWGQjBI/S+5/OuQA/B5LgyI+F+h/T7wOSAm1qlEmSKJeIN?=
 =?us-ascii?Q?Ww5b+cPXBvlAybw63FPx3sbhXeFAbp591PrdBpq5p2bJS7g/hK/htnH6vw7Q?=
 =?us-ascii?Q?1MwRfDzoblFnhT2rA8JyOil/TPBduG0rb5eO3kT1VZRUWtXwJAzF+PbEhWfU?=
 =?us-ascii?Q?3A=3D=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68333f1a-3119-475f-6034-08dadd7deecd
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4759.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2022 02:50:17.6090
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CzZDCqte7kteoUR4u63S8ZvQRVeL7phSsEJ4yCkFwO1PdPTLuP1FX/OIbZlch9JYmTF+VrPEhDdR+Fq/LuCZvus8nqKjjY/NVhbXE9GF61s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB5306
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-13_03,2022-12-13_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0 bulkscore=0
 suspectscore=0 mlxscore=0 mlxlogscore=945 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2212140020
X-Proofpoint-GUID: CC8wqklI1EnlvFI_hLndR5C3h5pGQqTI
X-Proofpoint-ORIG-GUID: CC8wqklI1EnlvFI_hLndR5C3h5pGQqTI
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2022-7-12 header.b=xjT2rkB3;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=qSPP2Ctc;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


Wenchao,

> I found an issue that kernel would send ISCSI_KEVENT_UNBIND_SESSION
> for multiple times which should be fixed.

Applied to 6.2/scsi-staging, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq1wn6uem2d.fsf%40ca-mkp.ca.oracle.com.
