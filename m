Return-Path: <open-iscsi+bncBDVIJONZ3YDRBZ4M42YQMGQE57F5U4I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF758BD912
	for <lists+open-iscsi@lfdr.de>; Tue,  7 May 2024 03:39:54 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id 006d021491bc7-5b209e734f5sf1681692eaf.1
        for <lists+open-iscsi@lfdr.de>; Mon, 06 May 2024 18:39:54 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1715045993; cv=pass;
        d=google.com; s=arc-20160816;
        b=j17n9XIwRwdTdzojREoMlx6DkgC22Kx1vazlGd9XBqxwCmGDeDCmXwIGIrF+0kIrkH
         fOS0ugfbP4d1LQBLke2LGMgZLj3n7AnGZY8PUJN+Ig1tzhTuAvfvFTnpUdsRe+EkQJ76
         6sra9g+oqcUVBjqAmHDiIeg9Jqwx4KDY7Kf6cojw293ruYLVUjl5aDL5I3eTgXxGjue5
         +3iiyQTh/ShG+5Z3M7Hb4FjmD340mmvXu0h4D4iZnwuLK/W3K8j4pos7ZfhuyHgusvIb
         Jx7DeRC0YRcWkwE/7g9vefGFlO7fH17hy+VTColljoORPZvTOwxsMpyjSnolsQ///d4j
         53PQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:date:references
         :message-id:organization:in-reply-to:from:subject:cc:to
         :dkim-signature;
        bh=iTbPSmsOll0c5pkvMX9GrSa7Y6SHI3f86BnKDl8DtIs=;
        fh=wB0unFFy8bHdiGt3timkOwqOZlJINt95PuTpD69p4QY=;
        b=J7NJm5XHhFPRf3Q2mw76apu2v/543pTmpXBFP16mSXLxhFH3vz4Sp/nDxTshfOWhq8
         m++0kKjuAa1QrMm/dhi5uR0APyWcNtaY0GKgLE7tRkVnXA8yS5GvtEidjke0KsAenHac
         99RCLQxNKke08NvdwXQJ8EOesWRV+uJXCuFo12T0nmZ/1d4zihxxArvJAv/sPQHbPU7q
         EgbfEbwUWV73Ee408pmImp5ghpvWVJ/olA7qy1OCqm/cF48/qswNjSMPneO+jW4df3rv
         iKzeBUM7sMhbn1Pz/oJ7XovXyMKp2IvwnlhvN/nrd2PMuklXL9YlpZhyOPmdcAd7HbvG
         bqHA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=M4Jkb4It;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=clYOmkAg;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1715045993; x=1715650793; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:date:references:message-id
         :organization:in-reply-to:from:subject:cc:to:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iTbPSmsOll0c5pkvMX9GrSa7Y6SHI3f86BnKDl8DtIs=;
        b=M15fJyPvHViOdJAd4T1Eg66UIYdllnqou1axVaexW0sF7gq+5zkmksj8Qsy29YLlW1
         yyN5pmMNedk7d4b2gQ1xzzuzTszjUHObQxQaktSLc235kXwsTEdg5RJStKe8xFvDRiLl
         gbVLSXtKH+ziXSf+tPXaNqytvLANtfROoT5cCi6HTHgiN2KymDAgUuG0KIZT3nmKIsMg
         loRSQb8D1dghI2KNXiu9BC6kVkRVQ+Wa86pQsDui9hj1YBJqu69drMAI0RO36CU6ClLA
         TbtEBTTEAcIqZnpMXHaG5+HMYlsqt0mDTvjMsW7oiPl005ZXhm90ZPcvTnGE7ZiFoO8x
         CWWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715045993; x=1715650793;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :date:references:message-id:organization:in-reply-to:from:subject:cc
         :to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iTbPSmsOll0c5pkvMX9GrSa7Y6SHI3f86BnKDl8DtIs=;
        b=vQdcjhkYCA+vDWetr6xFAGnQDx8opgKwOwtr0UqdsEcmzcgIgFFuPyS6P953ni3VwG
         D2H5rXL5vjNfrXq9TuWMuKAmAIMwGuDUEUiFsKqHmCOgGFrUDwsJ7SSIWwTFJf6aas5Y
         JJfyvGKHGAUX/xUvPP5efUIJuxJfkX4UZitd2gQ9A0gIn67MEtcgrK97tP5OsXKLZ7hg
         BOBVrY7+XQip80LIzx71oD9bwHso6Zs1if5BH18IdycsV3pBzjxd4oaldwrUvvvK9ddK
         UyHMOvDsC9b/GMkZ9gm2engGnOa1NEE0/wxhczl8L5EReSgB81aPlS+5NgOSq2RuhPM8
         Yerg==
X-Forwarded-Encrypted: i=3; AJvYcCUfn6pqbJW83c67LLTnZ06iVPhYHnaAozSRwtkf7rw2HLQZwhoeEyNgARm0+ziziZamu9Y3ExhXqj8u2GClmKyr2qBKmnWTWk8=
X-Gm-Message-State: AOJu0YyPNMP0LxxOP99oBxC7qCBGSaU9F9iEkiof7F2x443/rynxhNZA
	ahf8Zl1DKS6onu/UFLMy73zjIIVliBLlAOvbszfe2ya/ZX0+QXCe
X-Google-Smtp-Source: AGHT+IH0jucoNMKND7QXEeB6FXaQarr2w5xgIC7wvsXYIxhbZjNVBqjt3D2T6gUU9p2TEp1F5vaboQ==
X-Received: by 2002:a05:6870:2011:b0:22a:3226:b10a with SMTP id 586e51a60fabf-2401980a294mr559967fac.17.1715045993024;
        Mon, 06 May 2024 18:39:53 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:158c:b0:23c:b5dc:c547 with SMTP id
 586e51a60fabf-23dd0e6ff33ls1457255fac.1.-pod-prod-00-us; Mon, 06 May 2024
 18:39:50 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCW8GM0C/QYy/ManZ2yylBzpTo0qWdeq42iE3XA+HED2+YdTkuSWN2j7/kUeJ04BVT1b+y3e7lrbu0EOI6Slnt/VtHe6MdkxZqRA2RA=
X-Received: by 2002:a05:6808:13d6:b0:3c3:dcb9:118a with SMTP id 5614622812f47-3c9797329bemr560819b6e.28.1715045990625;
        Mon, 06 May 2024 18:39:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1715045990; cv=pass;
        d=google.com; s=arc-20160816;
        b=x9gctixgmrkhjViIxnNL/SH9HIBV6Vn+UUwnHFQTUx4MDDMytPxUv6GFnn83Jtq+p+
         vy7zZJYWH60ZZ/R3sWekSRIxYbzFUgi3JCMDzYiV+6K8H4TWPJrvAyQX/9FNhngReOWQ
         ufU8EO8hBxbqZKdMpvjp97gWNg+W6ovNqJ2HKMRp1Z+5hQXoz/hUei8G2ETiGd1gqMDi
         DgRRGThAjcVrMEfVmnGNvDYp7RdaFC5bGE/Zi6Xo7fKVJqplMKBM2SqSTDnO66EL3EzI
         5/bqVKa+TaLVoyiafBBMeJZp4wMjlUFS42HaCL0+h109nONwoz5eUKJgMth/BluLDGju
         jKhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:date:references:message-id:organization:in-reply-to
         :from:subject:cc:to:dkim-signature:dkim-signature;
        bh=9YYlXkme6qKD6h2sBcIzoD5a7fJcmqZcw6o1GkNu8jw=;
        fh=blipu46WdPlv/OFspq3oYJZi6lmseAwxnMx2NHLjJSI=;
        b=xYFX4eSR1wur2eO6UyO8hRZ8uJ8m1K3zpDRKiK2gLQlDg0OCeYzas2nYeU+vEJG912
         m2abodh/af2COR1rdjmGNuU3M4Au2/gBvi0wVpWY5HrWHqI5KrXI7q1ciqayA1cAPEwm
         BDj7O5SqSMUrgZPZt9llV0zgPfnGZL7W8H1g9bHJ3oahorVG8s8gMxoZdxmGmqJHunob
         ZxSgyvnLIy9/yy/0ByLMcBjzeBmb/nqPznZ5F7g3DxNLQZVb4JzJ3aOR0UaU9O/Nm9RK
         Q5VTSeJDFE83EGnEX5KtVKaU7H1WhlkmlV2CRXMaAEEUkCDbU7GSm+s3HvZQeu46yBeq
         MYfQ==;
        dara=google.com
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=M4Jkb4It;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=clYOmkAg;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id u7-20020a056808114700b003c9668afebasi494651oiu.2.2024.05.06.18.39.50
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 May 2024 18:39:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 446Mmr20025959;
	Tue, 7 May 2024 01:39:50 GMT
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3xwcmvbv8n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 07 May 2024 01:39:49 +0000
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 4471EI6Y029361;
	Tue, 7 May 2024 01:39:49 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3xwbfcktyt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 07 May 2024 01:39:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gQ+VeThF0hpKM+v5VloJ8NzV1zQraerbhWPBEtf6dm0C42OryZ45bFUgLVAWnPqA/aX22rg5U5dQEO4YjhnyijPsRNTutnzZPCghopYpdfUWNwzFdJSuhZv77YCZlTczhuJ8cxcvEhx3M7B/5tvEk4r+DFcgRy1w6ttSpoHXgvo1CflmA2TsXlt90koCgMjL5qeZh1vV654yXuMNmVW2y+tEZL6556DdPcaG0tlfy43WYlgQYWAyRPFj4q/FGN5jsFpcLubnbwnakxofyLt8sqmtJCwNkV4GT0PN9IYximzd312p27SNPgg/76Bt6WbYI3qv+T8U5/lYxRQI/2KF3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9YYlXkme6qKD6h2sBcIzoD5a7fJcmqZcw6o1GkNu8jw=;
 b=bAgsCbHJOH1BcHY/qY+z5rYHxOS80Dk8yrxALXoNxpcsaBndMdxyzHjYek78Dmf4jD9YGFk/mRij2YxQRgoyOsbIm/ij+eOIu1O5R5DIXyXlngtOuevJ/vYycLNFZytx+B7NTiSLb/LO7C6n+vCeqNarxT2YhB4UWrbRp3mQCVlTfUkGoaKbA/bSXIvR44XLMNUhwsAMu/vhknZVoLJcLrRO81IwXco7EpkSeb3i34NffYsmQkYPSU1IJjaQm6fKAaO3yvzpRbTA8lNcGcSYnSbt0y8F8tB7+S+Zptbjy1iVuUbinc8lPyAJTN1+w1y5zLraw7U9qHDkVqTbxzbXyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from PH0PR10MB4759.namprd10.prod.outlook.com (2603:10b6:510:3d::12)
 by BY5PR10MB4388.namprd10.prod.outlook.com (2603:10b6:a03:212::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.42; Tue, 7 May
 2024 01:39:47 +0000
Received: from PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::5c74:6a24:843e:e8f7]) by PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::5c74:6a24:843e:e8f7%4]) with mapi id 15.20.7544.041; Tue, 7 May 2024
 01:39:47 +0000
To: linux@treblig.org
Cc: michael.christie@oracle.com, James.Bottomley@HansenPartnership.com,
        linux-kernel@vger.kernel.org, open-iscsi@googlegroups.com,
        linux-scsi@vger.kernel.org
Subject: Re: [PATCH] scsi:iscsi: Remove unused list 'connlist_err'
From: "'Martin K. Petersen' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <20240503232309.152320-1-linux@treblig.org> (linux@treblig.org's
	message of "Sat, 4 May 2024 00:23:09 +0100")
Organization: Oracle Corporation
Message-ID: <yq1ikzqxuw6.fsf@ca-mkp.ca.oracle.com>
References: <20240503232309.152320-1-linux@treblig.org>
Date: Mon, 06 May 2024 21:39:45 -0400
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: SJ0PR13CA0176.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::31) To PH0PR10MB4759.namprd10.prod.outlook.com
 (2603:10b6:510:3d::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB4759:EE_|BY5PR10MB4388:EE_
X-MS-Office365-Filtering-Correlation-Id: 7257ff60-6f2d-4244-1d80-08dc6e36943a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?x5m50fbNA6Qnl+w/FdvDowgO/xUcZGljQfCR+OQFUs9+u6UnUrv9ye4IQLVu?=
 =?us-ascii?Q?cldsHGBWdcNPhYE/offBhX0qaThcVwfnru5kC2Ov6bTrQwy8yoKoIeaAWwY6?=
 =?us-ascii?Q?iF0KyWalXLad/jvnELXBGHOnxOZl50bjj93xtdQNGzfkxXUMKsfB9oBVMHxD?=
 =?us-ascii?Q?zJb87Coks4EIW7PmcixF+Ll8OQYnIidXTBHstEVfniChSV3vzSsIaqIWdkTQ?=
 =?us-ascii?Q?YTEYvequVmDzUEAmtXBRte6RA4Onl606o4PlvVPnP1gAC9InKQ/0jYFFWHix?=
 =?us-ascii?Q?50YQ8H0YQaN+DtYbd/N7OtlRZaIu93d0M/VhHngANkbNvwyNsqZGNoe4m9dk?=
 =?us-ascii?Q?7cg5/ZP+Dkerm12/5b6g8m0lQ024aQiouNAcSsfuoRDlNpcCgnt8UPcFL0JG?=
 =?us-ascii?Q?2Wo+l1XXYh2w6ojfFa6AMShNKQ/nQTWJjLGHA6rhCg7GQpjfjns47ZQYYi7A?=
 =?us-ascii?Q?o4aWWeBz0+0ZlyeLlAxGEsM19OGwa1pybpCMdy4ZyVBaSCTtq481BpW5h8bh?=
 =?us-ascii?Q?h4/bbyH76qwB7qwQGuz0FFQX5m+cSI+c42wkc01SaQ1WY0Rd/4lWqTBQxfiT?=
 =?us-ascii?Q?KZ6DiF1aqjUm80ROKnkIPF4wnYAjWh6JLAW+WHRT8PARkLsL+oxv74VyYgWT?=
 =?us-ascii?Q?PPjTCvnOGaV1YhdzB2WGWBLS8398EMogia0mMEmMDirIn8FlpD+Gvv8za+yX?=
 =?us-ascii?Q?labPP+jOUSR5xKIqu+UH7w1Mq2iRjdHme3pArKuyRNblS26P2nm+i9WM9cfj?=
 =?us-ascii?Q?UomSerawxqYdV7h8VeEH4MYo2FLeljSTUfpdtOgVysz1bkVfkdhRTwMBmwlg?=
 =?us-ascii?Q?mmasJ+wEVWejbTZdhxv6Plxs4MBBi+oMhZwmk5kNbxLCNxNsGtxbA8B3Qoal?=
 =?us-ascii?Q?JVhIFHcQk8eY+vYoCuJSXmIZ3EAnthTSS1POHcFI7pG/PoFIgXMd5G9MUtvx?=
 =?us-ascii?Q?LmOOWu8su9VtRwKdgnfZGT6hWvjSbrwg0yjAUxw52FlKos9MRpFutyFsOIOl?=
 =?us-ascii?Q?l41aE1SW2le7ULLx8l6pvojYuQsEbi2r7lR1BvmiKKm5ZVFOK/ZMT72oSib8?=
 =?us-ascii?Q?o+gOTcahDfcoJ26t101Lg0kOT+7EB91NogYesg0o4Q8/DasNseuRH+QyQTyd?=
 =?us-ascii?Q?LfXb2Rukp5RldgaQ08ZVmDbhJ+/Ncs71cCer023FtmdrmzPL87RtsOQmWVq/?=
 =?us-ascii?Q?2SoxaGLm5nzY+1K9KhR8L62LxYB3sb9L+XeZBuPZSzTKDegJckqUpPO3quaW?=
 =?us-ascii?Q?95iwbs1CnmGC/Ht6FtdIAFk+AzCj8s9HBrKUVJLm4A=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4759.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?b5E3y5+kdthwG2ChhufUlj4FpHGHnx9bdOqMgmaLhy4FXLItiEfOklgSYI+w?=
 =?us-ascii?Q?B2k7drjBb9M5W2SulpqgFM6x3QppALHFYt8xGd3pi/MNqDnJpCSIJAYqNXOS?=
 =?us-ascii?Q?4VfVs3sNdXs+tEhQ3X1iw7rtUjwaCuBIME/m+pOvhBeIX2tUdd5daKs8x9uc?=
 =?us-ascii?Q?wmvn0HDW5ezFRIcCFuSlyzUCOqBb7Cxc+3vDqEUIhXK38vlYGcmaEBjH5Ag4?=
 =?us-ascii?Q?7+thBcevogdmtJTyDbnW6lwf2OV7sGrJ3N3VCJCVUWXKlLlvURkoziXrNVNr?=
 =?us-ascii?Q?Ad+/KkSxVmocxy0ZrSLp/iVOraa9/445zm5lXpvntwcCCiC3Xm7U3l6uVbB6?=
 =?us-ascii?Q?wRIFsMhNpBxz7hL31ZjjKVfL9EugaBcI0FZRHGrRrwep7QxIx6AuwTpmHAjt?=
 =?us-ascii?Q?+XlJREUc7wdAMUfCMQig0UxatpQQOgIHXE2U0venTi3sNwcePVRQruVaFctI?=
 =?us-ascii?Q?pAgi8eJcAPffEIFm/UiMiswY4YSpn1kx1fQSsVpHeTuno9XzAoKWarRY6z/p?=
 =?us-ascii?Q?p/ix8NM9zyse/1LURlNx6wCCR1/nyPjZEtcnb+d7PJj+SIv9wLb52uFEvBq7?=
 =?us-ascii?Q?n5cB8tcSVSkW55lOBSP8wns7KXT4zFag508DtMO4XqMMWrkGpDG1h1OBlgZO?=
 =?us-ascii?Q?mTnL/5XTD75CfPRtEqSSpLQ/5zZ4MBHNv1CGLmWdTWUmjXeW4MGQJXijEC78?=
 =?us-ascii?Q?2I7ItistMFyVA3IuH2jmzQZXgKSRujWrVesyiRKzilcZ32Wx1Wr4+WA1qljh?=
 =?us-ascii?Q?tKyJGNOkanqx1aK3bVyCG5Px+oQRfS1nx6QOnbf7u/IMqnvwMrHzDl/UdEhW?=
 =?us-ascii?Q?ecp+yccgIU6LE294XGqdZ2bCs71I3CTig354aUqVG4ge/m5IWRcIx/C37ZGX?=
 =?us-ascii?Q?8HiX2nOP8apfYwjS+8Qf1hcvULoGi3bl8lYOIYAmT/gp+QyRf2eHpqtX+r1u?=
 =?us-ascii?Q?64tsXa99h2hK7xne3b/EqG5mx7SJ+DpXkAztDekTUvjl16Lj4hUcK08HHPO6?=
 =?us-ascii?Q?sfUr7eOnanNs+EoeRg4uwoFd3UpadAaBQ0iyjHrDyhUrjQeeSsc6gVGHWkpT?=
 =?us-ascii?Q?iavYUp8cRckuVuCrCmF1ghj7LA1acgLPyKER0rnqOglpF5z65gBClNnz1l64?=
 =?us-ascii?Q?REEUQQJaGWwOMWYfq03ozDFnRGTmWAxnMURy4VeBn0qVt12PZ5ypNcUeA9gb?=
 =?us-ascii?Q?wEvsCqab1hnRNZxKjGxSltkQCht2h+ZuJMIbitoOsALvpxF2zeavO1vnLVXw?=
 =?us-ascii?Q?vULFKJb5ejpp+Y8QzaVGaaSg/cMfE84lUrXaQICG5eWkxnKXaZZyMww/CExC?=
 =?us-ascii?Q?Qqj6kXwNIYTGL5n9bqEDuVW7KSk8yVDJLWUorJYtQHBeVvUpeAOPjax0xvdx?=
 =?us-ascii?Q?nANTwDSm5Sk5DCIU4kFDiQm10dLLCjrEFf5cWFm0D5P2UW2irB20Dma1Z1ro?=
 =?us-ascii?Q?tanL+SrjR53/M4chvWa8AFU6JvscvsQczkRidr+IBp0q8Q7rCLAcGZ4+LHFY?=
 =?us-ascii?Q?3o6McbIxpGLt5/NMFnRBObwfh0P0DOAkPzjVbqPV8qHClIQ/XEzuhMhJiNoK?=
 =?us-ascii?Q?MZ0Bm5IwZ/Hojg7GjRzE9wmkEu6cBSgI0JVchFBcrUTHH1zdUOSAUGaQHeWg?=
 =?us-ascii?Q?yQ=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: wkDAeL9XnAUD9UETr6l4SJ2GCHcoxIYrGHMX5IPB7fpjjmaZ77j4kbEeAb0Xls6yGLJ0ek3rN30JFOaUDYUvR0Ee2cw9p5Rrw35e/Ndjmye0EoBnQOmYezS2ITcr/QlAZ9J8ffbJyYy2UuYJo+EARnYN8IV+irpagalrVnHxqDA97dWhbcPkNcIKyZMOtsWNaVuYb/CY8ZOmcKf6MJUm2UHhq1NPrmbIQGlWPAouFH3XQngMDPNrbsWfdY8ns8sc2t+/vNS7GFev1EB3ghkABInaQ/csK83CoViDtENmJUbVEPuEOqAWfthfkoWlXZCuuaUIyrp240VyOncWzWQHHb0Mc5mzdk611jObPQC0XsKO55e4JB31LcyLlp0I/6TL65ZtQQQ1qNxNc696g9dEMtgqfvEf1q8QyQosKNCkxuOfwnJxsJUYt7vZA5KyLkXMZFzo8gBNJ1j0u9HZ9mMoYrBRNjEkHIbo2bt7c40b2+RodOqBHI5CAp1X+nYnsrDPsAgd1HbGBVfvYPSKnB4ZE8OfSQ5uDLL5+h/4pyCihq0j+JgNUIINRDOjQnRJd2AN+WaUbRaphmsQAXMguKvmv/WPd2yy4/P4k9sxL79kL24=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7257ff60-6f2d-4244-1d80-08dc6e36943a
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4759.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2024 01:39:47.5719
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Fepudxm/MSg9vSSdZdRYBxa8MLSZuSuV9ad8MldSEDaIdwLxWNkwz4E7LQt9Mzn2Hn4Hy9ODhz+kn46UnFxtAtV7IMya/YWKlShBcvt0shw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR10MB4388
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-06_19,2024-05-06_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 suspectscore=0
 mlxlogscore=999 adultscore=0 spamscore=0 phishscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2405070011
X-Proofpoint-GUID: mLY9wi94wXd52lI8O-zHwjI8mI0oc3HP
X-Proofpoint-ORIG-GUID: mLY9wi94wXd52lI8O-zHwjI8mI0oc3HP
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=M4Jkb4It;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=clYOmkAg;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=oracle.com
X-Original-From: "Martin K. Petersen" <martin.petersen@oracle.com>
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


> I think the last use of this list was removed by
>   commit 23d6fefbb3f6 ("scsi: iscsi: Fix in-kernel conn failure
> handling").
>
> Build tested only.

Applied to 6.10/scsi-staging, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq1ikzqxuw6.fsf%40ca-mkp.ca.oracle.com.
