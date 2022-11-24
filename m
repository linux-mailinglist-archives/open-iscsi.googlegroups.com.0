Return-Path: <open-iscsi+bncBDVIJONZ3YDRBIOQ7ONQMGQE3EVSV2Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5254963712D
	for <lists+open-iscsi@lfdr.de>; Thu, 24 Nov 2022 04:42:28 +0100 (CET)
Received: by mail-vs1-xe3d.google.com with SMTP id 4-20020a671704000000b003af7639515asf115173vsx.8
        for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 19:42:28 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1669261347; cv=pass;
        d=google.com; s=arc-20160816;
        b=DtmKnERkdSxQi4JySCi/x6zu48XmVcxp6WGv7UjJC1V26lwSJbaHSOOXlz8IJIwgMG
         2JQx5zPb2YPbADPROSvtnenoEi1VNaVDd5OctkLWLav28Cq4ysq6k55aJi53sQTvzfop
         4rTQUFGkS8RzZCzWVLEiPEk4DNAJk1zoRvNeTCRZh4z5L8o2keXZEa1yxFTTiqLAtD4L
         R845uVQzd7MfoFrdmjtGk/xEqeZU8AF/praowxxlvBCoidU1ZIBGZPYThy0ivEDXuYvT
         lslKeQ0vkj3sFHZ9wMlgfLtoUCFD655VLnD40klhYveGPPK4eQLvjrSFutv8m8c6btdQ
         w7Dw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :date:references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=O+ZDc8YQgmPuLtGZiyDC8tIZdOmWZoP15Jz7Ol13qmY=;
        b=wV/URjGhcPitRBeOutiR/3fUKc+BI7YTzs5p8wtA+17Rx0Uh5dDaZAL3WScDM3yNBp
         sNIM3PnyOAo9djOvDeNpIe9459t+nKNA9rhH1+ivOVFbx7dtpmvim0Wgu6uGRe5yC9TA
         kQx+E7p2RhmnzW1VMNJzI9fwnUkw0Iy0aKuV4v9UHyvn37OVkt7YrmT7AbeI3Mllcjfo
         6jE5r4sEq61HpEHMoxSIhg64kLcx475WdQoO2g4/yZxcMql54Oc+IXuYcD2IwDE+MO/S
         ttPJuYUMNkc6QoLd1yPvYumAaAMYJafi041X4ByeipEW13wtLCBtnJ+rzMrPHxM4D0Rd
         JgdA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b="P0Gynd/S";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=ANgUyGVB;
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
        bh=O+ZDc8YQgmPuLtGZiyDC8tIZdOmWZoP15Jz7Ol13qmY=;
        b=nfESS/pxW89ic27k4qhG8vs44T9NNKTkVaTbx2hMrvQKmbHmrK1RFYmFeA/7BrVews
         DOtO4t9XOvR+H3rgzQuLsR1Xxp6Br/SgYO6god8hVHVo2/S7XvaSkVoqpCc5xjtPaEVI
         wClXENmzGlSEv01UhEg4nkSihOOTeqNf4/jKEDbTJeafOkMxfLk4eaHVSZRR9OFnGz6g
         FGI5DpJds2qfkvgR64iJVNlw09P+ww8Nx/Yl/+w5VyU3AxQJX76o56F7n5dLBrMrfAi3
         1Y4t0esAo4PCtmGjQKS1grgoKbO20dzR2Y5wOtGeJubcUysZaZQ0g/hU6zXlJUK6m1Y6
         LQ/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:date:references:message-id:organization:from:subject:cc
         :to:x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O+ZDc8YQgmPuLtGZiyDC8tIZdOmWZoP15Jz7Ol13qmY=;
        b=4sbGUQs9mwr/Q7UTWU4I3lC3OwF+LgSu8LiXsdqEtYDA/+sRwjviv4O4fG4K6uIWnv
         0L16DSAgHvipkDPedieBIHHOTnwBLA/gW4tmQzewiJLVeUY2pyKyOecYWJ42BWE2bLt3
         MPrUy3oIz83VHuMvDbgpti8rDIj/sECoZc31HQE9UYKkyLZJxxOVRDQ5SpqoewOIQL4p
         AMgk1yxycH1oUyRoeHGeXBynEsUViXFPM6E7nYsvsqGuL/n6HOTw9fUES32Ss6IXzpX/
         thajOjM5K/lMHr2cl0PKbWPgoaFbOsVxhcxnFfpni/Yb19TmXE/1xEl5UmOxyrz6xWWR
         kXPA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pmMLd9gISYjAA707B8spCAIV7GQ0jLtETIoX8BoA1EC0pV5GDOh
	BdjtXLblGZKctqE447hbKho=
X-Google-Smtp-Source: AA0mqf5NgQ96+WPsu3xbKCtjMM2GjythHrzc8CWvqD1C8+T/1LSzldb/jpc4dGO2UwkALJ7mjAqEFw==
X-Received: by 2002:a05:6102:3a66:b0:392:9feb:d242 with SMTP id bf6-20020a0561023a6600b003929febd242mr6917439vsb.19.1669261347117;
        Wed, 23 Nov 2022 19:42:27 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ab0:7054:0:b0:418:ba6e:f785 with SMTP id v20-20020ab07054000000b00418ba6ef785ls43303ual.9.-pod-prod-gmail;
 Wed, 23 Nov 2022 19:42:25 -0800 (PST)
X-Received: by 2002:ab0:6caa:0:b0:409:a03b:1bbb with SMTP id j10-20020ab06caa000000b00409a03b1bbbmr17667933uaa.55.1669261344942;
        Wed, 23 Nov 2022 19:42:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669261344; cv=pass;
        d=google.com; s=arc-20160816;
        b=sJhR6nT16s+jJ0fj/OCA4CPdlyCt7AZprJGwli0/96Bw3gtqfbAqki8pwRr+hnLkA0
         Rhq6HS6J6Ql2qbkYBS/EgOQCU8LdIT63U4J85Hy19NkOSlf+fXytfeM6KiRguspWInEv
         YbzPPPgKxaSSognr81i2MIY/6QLQiugQjBI1bhp6JPnlPQ9Gfu9WS7m+GyctJ9ymjkPC
         gIN9NGdJN7+/NNLboyGUvcqUU+AibXwIpSWak+i9no5yA7QA40O+RYCbkDqo52eSHqwg
         Oz0t812/u/qmTsEKRiW+jj/ElvN+YoJ2vz5qThBsSAzJRSdDgKm7PbTBZPJgrTz/OLdb
         mdcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature:dkim-signature;
        bh=YUhVRDU5qOSKw332gbKgFHN0mqx+4g7UREJyK5ygKsM=;
        b=vRjm2w1gmPFxr5ge9/FrWbT494aea7OF+T8publDv/CLxTSlKj5OSkxSs+nGrU+8vF
         cn7XhU8aggo8LWSa9retOz6Le+1n9ZU0WNZRQE0LBQtfVdtxn703mFbP+Hz+63tOXKZq
         4jdbheFA3BRqpUTdW8Ivlb2nJYKZRe+HKDXrFYlhdiTHqo5ZldaH63840FmIiN21cuAG
         vQ1IKrbEl0GQSvt/tyamawpqI2eiatZSpc+BwL6VJGgv4/Q2ClsbD4ex7bFvMX1OlfXZ
         wrYUsLjRRK+ye/HuST4ztTZ6A3EuGEhRtFu4M5Y0q2p4SvJqhUlR+zrB7ZW/nxYojWZN
         dJqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b="P0Gynd/S";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=ANgUyGVB;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id a13-20020ab03c8d000000b0040ac33271e7si2823205uax.2.2022.11.23.19.42.24
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Nov 2022 19:42:24 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2AO3KDNB023004;
	Thu, 24 Nov 2022 03:42:23 GMT
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3m20m2811e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 24 Nov 2022 03:42:23 +0000
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 2AO0g1Yo010739;
	Thu, 24 Nov 2022 03:42:22 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2168.outbound.protection.outlook.com [104.47.56.168])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3kxnkdy8pu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 24 Nov 2022 03:42:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MjTT1rtAJnYFN4FW3IPbLJNtP44d5q1zxSqyBKjavxGSHpNq5h8rq2FDg44W8YXV9vuDS1pLtWtrHUiZ8YeGCRCNYKeu+Gt4IeCjyLVqQc0lm5aNcgIq9zBmI3eHiTCtNaVdXEoYwSwXlzGoEUwrboIQWS+gN4lBxjMX7oIarnnqro68qzoQwSFPNn4grsgmC11j9xsgcbgoCw6vxOBU4v6Qo8xRJXIJFX/QnIZ/FMo3FZSXNcI5YCW0aL1VNOOrcswPxSHiZnRC7BQFzzLSwuIZwtd3+6vmKl5U86mS6QmQ7YAyK8xFLR76iA1boJlfsyFLLGgCbkLOKUhDZ4V49Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YUhVRDU5qOSKw332gbKgFHN0mqx+4g7UREJyK5ygKsM=;
 b=nfopobRLE1EhBaSqY6aaGl6QyUDfbuec/gT4cxvyY2SjqinD/8dU0S20j49q7V3HePotma5uwHtdRfrKtokx4EWxXm1QS8wQum3+SjMC5yZTn6KNxIocJbMAA1Q1tP2LB1fDE04mY2u7xeLNCb7JlK/obUJYqCrr5hMn2c1m7VOiAma+THPK4fLeNxp5QjtDjMb7h+AmuFL4OIEFjLHTq9VLXmRO9Z1Wjr6qVrYQ9inNdzQ64DYDEI2cKJwnmRMeeGwmTYLIVcDgIoiFKKOs7ys5hP8FcGoOSO/iUNpPE0fLVIvabJVSHnlTwR+We/mt3Q7mpWalDsCsF2qDh+AiMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from PH0PR10MB4759.namprd10.prod.outlook.com (2603:10b6:510:3d::12)
 by BLAPR10MB5235.namprd10.prod.outlook.com (2603:10b6:208:325::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.19; Thu, 24 Nov
 2022 03:42:19 +0000
Received: from PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::b32e:78d8:ef63:470a]) by PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::b32e:78d8:ef63:470a%8]) with mapi id 15.20.5857.019; Thu, 24 Nov 2022
 03:42:19 +0000
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
Subject: Re: [PATCH v3 0/2] Fix scsi device's iodone_cnt mismatch with
 iorequest_cnt
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1tu2prpbi.fsf@ca-mkp.ca.oracle.com>
References: <20221123122137.150776-1-haowenchao@huawei.com>
Date: Wed, 23 Nov 2022 22:42:15 -0500
In-Reply-To: <20221123122137.150776-1-haowenchao@huawei.com> (Wenchao Hao's
	message of "Wed, 23 Nov 2022 20:21:35 +0800")
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: SN7PR18CA0014.namprd18.prod.outlook.com
 (2603:10b6:806:f3::26) To PH0PR10MB4759.namprd10.prod.outlook.com
 (2603:10b6:510:3d::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB4759:EE_|BLAPR10MB5235:EE_
X-MS-Office365-Filtering-Correlation-Id: 35bb9318-16d6-4ca7-5e1e-08dacdcde278
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ipHRZBFt/MYWiJtPiEDDe9Xgo21PjONG5bzHIYHNMrttEgm/ryk6hi0bTCTZu38DD5gG73qexWVDFC81U2XKd3d3fiKiLFXIsWBVYOF/KwbW8Pyr5XbvEVQXbXGCOhBDsGCXaf/L4CZBitm7mi34EF1sVFP+YNQXElMW0fp3soaOC5ZeejVUF9yLZasbVYIDAJv3RZy9Rjs0fm1/yXfQEYTwHBASVYlTQhwMLtVedmm8M1lttpn7cUbgavEiSMuyueJ4Jg4jBsWyxHjGxgnYxrH37tHtQM7rwp68fFKIWlawpvfNCeweLxRJGd8YGFX4xrDVgiW3LS6Kh9UrZ0kXQHJc5aONefsalcDBUOJAbYOBfkQDHY+0071ml5YC9jBIKYrf8Qb6Fj/z8tA37LeXBeHwhXlwWIgHoTwDCe15IQvfNnXG2xGeNBhJPxDH80PA4bqEXUOdwtflwZkmlq48Nd6WbKU31xC0ToN4Ezf5jxd3WXe5sAHJSF/c7K6gHrKRIlkUDWH5O3jk0PYwMakRw35caq42QnHDJoVkr3S0K8Um2ncjWU58NzqSiNsFJW3A5J69HpBOK9+g98bNm25TGA0jRJV88+LDUMAR+byp4TTZBOFBd43d1Lpv5aHUw1YztMxeb+1ILUzEqWTm7k9glw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4759.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(136003)(376002)(346002)(366004)(396003)(39860400002)(451199015)(316002)(54906003)(6916009)(6486002)(6666004)(26005)(6506007)(6512007)(4326008)(66946007)(8676002)(66556008)(478600001)(66476007)(36916002)(5660300002)(186003)(8936002)(2906002)(83380400001)(41300700001)(38100700002)(86362001)(558084003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?p4NR4Kx0b/aejHHrgJ5rycedgZcgyHNXNQPCC2enGxTkrFITJvRCxNYaC0C+?=
 =?us-ascii?Q?QZczNneE3rCrz0FNd3q7FD5dob5t4fPywjOrLnpZNIeGkRdTY8AI/ys9V9Vh?=
 =?us-ascii?Q?k1K4QcLcA+2V5gSj3LImvkMGzDl3TcYL/MwKBdKNt0zB3OcDWqefurbagyRx?=
 =?us-ascii?Q?ymX3sPwxgEfEP6Kayz2ZP4EqZM43AW3DR4uVPoao0k9l60OGFLrtv74Nkycn?=
 =?us-ascii?Q?eVBTCRlQmHZzvPifoEGCVaCgzsuuMFt9HCTRTJ/ugpcmTgqrORbeM4a5S4s3?=
 =?us-ascii?Q?HdpaPzgm3Wt0a+Go5OtLVH8EUYOGEEwfqkH+sUo4FyicOijGGIFcbDiHhbNj?=
 =?us-ascii?Q?aI119ybN3ShczT/2lNzwn+I1bS/XmAhjI1b3Wb7M0Hcj7Gztyq0DJ6tiY1sC?=
 =?us-ascii?Q?e6QxkgVnsDPkx1ckQJmbDuecx/0Itz6WLNLZ3wT3dP/NGxUdikK8qTNSdvgy?=
 =?us-ascii?Q?1/VsrpfBAlEX2FpQYTCGuyHlYBqUJmOk4UIzOGd6D6dLqhLOYOi45IEazIh0?=
 =?us-ascii?Q?fMMUVBVNb8ECV11CRqVJV2ZPM+v7lYQvu2n7ldlVagW+IoRBRtxbXzOG174L?=
 =?us-ascii?Q?S1DNK/dtbVSZxQy6205rDVE6glN04Xgqj1LuTShvk/jojWO+7kzWEdba4fif?=
 =?us-ascii?Q?RuHLCWXf2okfJMoD8+6VOOgrimld9wSSAczUISA1Uty0NqVZ+4drFp2d9mtQ?=
 =?us-ascii?Q?yyd5qURWrnHCo0WjH+nDfgRUuZg0XGhh/Bvtec9AOkOyaaLs1RY3XYFsgf3t?=
 =?us-ascii?Q?nwSP92R276HtN1xsGrlbMpPk1CHJVg1JKWUejnCO7Dsd6h+WHQcSzKcIs6dO?=
 =?us-ascii?Q?sYYYOyCzOSVJc6FziazcTt8y6Qr7hmasqc/JAzQJw+Eldp1nKCLoVM6CVLpT?=
 =?us-ascii?Q?TTzjJR5F7rgCud8/Zu6lKqaoNaaju994K3bLtyIb273F+3kDTK3vVLoJF7rS?=
 =?us-ascii?Q?CPGJ6kjrS4aNgADjNMxKhmgLO8IyGTl0KA0/ZtrbyqWJiNr46EwT7fWjzTZC?=
 =?us-ascii?Q?yfG/pVcx9kXxb1KAS8MQPo70GFeFXkIopPxMJUugJEtxVpEPIcKsqnFbfiW7?=
 =?us-ascii?Q?2uakss5vcdS1hCelcy6638IzHumdoOp7eiMNaWd1HASUPFDWjaXInyuPwg3s?=
 =?us-ascii?Q?APXJ6+Be2L32eN8wCEWxGlJ3LM7+EEA13yheVByY2hMwS+kx1k+ajE8DRhEf?=
 =?us-ascii?Q?lElDHRB3G2Ka2GErJz6Y3YAx2lP9Xq2HdwgCSlRsk+Z0qZKyM0tt0/FHztDa?=
 =?us-ascii?Q?+TbNGbOPJPIoFVvOJOwROgiCrYNsmwqLs7uydVGjuQ3tb0h7w33DWNnVxOOa?=
 =?us-ascii?Q?Mer04DQuVXthcpO9vEEMek/3emY18bxb6fMuYGGo41WHbmKiTAG3dlvCvzuz?=
 =?us-ascii?Q?3sXdVITaOR6rDyBNC8jXlw9ZMc35bVmIztIMQXJSh6VHiTXDYY611KP/JQwX?=
 =?us-ascii?Q?n6tRG0m39dfm4F1H/z7SSGBA0lzetsVIJEU+HPBwO+La3NR0NRrPNdtuEEN8?=
 =?us-ascii?Q?g901JrzTaoJC0QxKej/axITNwvqbQjFyMkwKZmT6tl+jLP54t0B5pQLuRwn/?=
 =?us-ascii?Q?IM4SniuQ6++spSvQ5YTZdQgBUHSAEZqZ7FLFO6OEID+lLo42gXJdJMdR+bLo?=
 =?us-ascii?Q?bQ=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?us-ascii?Q?N7nkAEFvtMcrjx7p+r8aeOgamyQ6LJ3VAATSurIDjGQdw7ULo/dihzmwZoMl?=
 =?us-ascii?Q?1Uo5dq8Q3rxWbno3ifMbAXKpMuBKd1ht4cXScuXMT601FwUhbBErM0nqfpp+?=
 =?us-ascii?Q?n37ZYvZYr73OaH5OUMUDKIP/5OalBbSLFT4C5EH0blosVR9AtboPiRsleMMn?=
 =?us-ascii?Q?Q+GTBVpAl6WGe1ngvfVmRWVf+zFuNMs3UzfoIHcYsMMDZ1CmfHx2pqCKHMn9?=
 =?us-ascii?Q?D7HYYF7E84uDAqo9Nfpg9iJRUvHGyV5EKAjv9E40LPQegS2X5acAsJTbTv3F?=
 =?us-ascii?Q?UBi793frcsTR39RvoeIg6ACbhW7GJ5th0FnN5pOkySXg7CRGP7Umd3Ci1rAp?=
 =?us-ascii?Q?nCLPJ/JddFmAQGQbzvPBvOyDF1zRQwrmAb+9ZNDFWM07yYgzdPNX93mVwU+F?=
 =?us-ascii?Q?yxq7QrKOIiprb0AVLcJCCCkbKG6V/Ss2jgsEZmd3KSO/QIJsw7fuOcYm/SW3?=
 =?us-ascii?Q?rYHMUGIRBk4xAXTHxKFN/2xlKrXyjVZWJg6REaNk4l+gls4q9KpbtOKQ/dEy?=
 =?us-ascii?Q?hacc704iQeyOyS/Th34rIW+8odzUS7CByXPFAB2fxGMWVGJEl+CBGj1mCOaR?=
 =?us-ascii?Q?rvwrvSMEsmsjzDo9f9t1lZRYqvor2I9HrTqGaXJNMLnCNCNNlZ4ljufv3m2n?=
 =?us-ascii?Q?j98MZUeBC7338VUmph4jDuXxA5f4grvXazaTKxCoYpbF4+4nb/IQ7eldG0Kt?=
 =?us-ascii?Q?o545NPBXeB8QpJjMSZukmBQzUkdni88S1ZhdmmfJG5Nb65JQYqtC14lbFTSJ?=
 =?us-ascii?Q?V18kReHpVj9eflpXCuvRYhLMzNSnjqyC56DdSbZNQSZ+0KcZY2JZr7+MQJHQ?=
 =?us-ascii?Q?jkLIkL1j0ij1MvqgbeImOwbfq3hnZtciSgJpf0KGR4tMQZR4juWQx7quYK+Z?=
 =?us-ascii?Q?kU7ewrpomwOaEamqOxVHqnYTZairXifFJDdGywqpcmy0zfk25eRGEkCshlpD?=
 =?us-ascii?Q?Wr9AqFJYfxuSyHXOpF1E1k0BBVP/F6/krePTKoQzvIUtGCER0VbH7e7C3JNS?=
 =?us-ascii?Q?B4Fmc9pXL/jHNtCtVTeQPLP6MQ=3D=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35bb9318-16d6-4ca7-5e1e-08dacdcde278
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4759.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2022 03:42:19.2092
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PkGCoWvMkmTEt5iIMO55LiFDOlrdarcnv2c/pB8j4Bek3VGvsoYp+1TMSAmAen+zd5WCfHkQu2CDgs21hrExOb+bDuzyYMU0Z8cqa3ilc9U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR10MB5235
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-24_02,2022-11-23_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 bulkscore=0 phishscore=0
 adultscore=0 suspectscore=0 mlxscore=0 mlxlogscore=877 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2210170000
 definitions=main-2211240027
X-Proofpoint-GUID: l3zHhbVtrTwGezKoUJ-WrWQWl-QgKeWK
X-Proofpoint-ORIG-GUID: l3zHhbVtrTwGezKoUJ-WrWQWl-QgKeWK
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2022-7-12 header.b="P0Gynd/S";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=ANgUyGVB;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

> Following scenario would make scsi_device's iodone_cnt mismatch with
> iorequest_cnt even if there is no request on this device any more.

Applied to 6.2/scsi-staging, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq1tu2prpbi.fsf%40ca-mkp.ca.oracle.com.
