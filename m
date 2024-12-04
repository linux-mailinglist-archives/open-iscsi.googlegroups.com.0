Return-Path: <open-iscsi+bncBDVIJONZ3YDRBPFUYK5AMGQE3SRTKDA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E1A9E42E2
	for <lists+open-iscsi@lfdr.de>; Wed,  4 Dec 2024 19:06:57 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id d2e1a72fcca58-7250da8a2a5sf85169b3a.0
        for <lists+open-iscsi@lfdr.de>; Wed, 04 Dec 2024 10:06:57 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1733335615; cv=pass;
        d=google.com; s=arc-20240605;
        b=hEPS+2ajyU2c7WiO6hVCK71FxyDrkvIglEZDlG/xrpTO+q/qGmk7x7hHZjwRWyxUTV
         SaeYHsZMn/h+F38BJ3LzxQq+9Ew45GLkYzmhE2m5a8YntQyinsQQG/fTAH/2p9CNgiE2
         rDbci3dsRsDfqZWLA7/tb3onTbYUvQlcnzLXFRj5bxVHmsh7o5ZXqE4HkIcYFAdKYhTn
         ENerUTCeLCaI2zXdEb1rw2OHgkQpMiBxQH45zH8svKLW1GsgyFYdAynnol09U0ftelwl
         Ly0uDDf9EpTLL3Ng0YkDhx1jK6AY9R/uUTjbVGc3Swm5aYKll1/IPWKbDydLPjWGFMOm
         o3SQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:date:references
         :message-id:organization:in-reply-to:from:subject:cc:to
         :dkim-signature;
        bh=CrVb6MU3DX7g6JQEKKtuH3d3VqUG8g4TWfmjUemfqeM=;
        fh=ZMNx/jqhD35yyiGX8unCzesBqPR3QqiPt5yXKyY1iIk=;
        b=VHXgwnS0TUBD0ljXZLFgqtgFvZ7AthVdE0LVso1nkDYM2OzPZMi10ay9SgM7bdi99f
         KGTDdQ8NJeUzOkwC2Vxj2H/r2jAFwSqDYgMSrSecnCgth0281BTAMllKqMAOdBhwirZi
         mAkJA4rQcCESMxtiBCJpko6W//Vx2lcgueVLzFAIgvGUpr+JPS86JQ2Hl2KApliiojNl
         Ex4of+U8t5Xn2dVzXzGWZWGqDrJcftM5eb8mIMSaxckaBzF5o6bFv74dav0KT6LH9qvk
         cz17ndllDVrG68m/39M6ndisyaa00fFCfaExf2BAlZ0cMSbiHijOVNjhoIUCPHPStXl6
         TzRg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b="oi/g0vjK";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=tCZdUn83;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1733335615; x=1733940415; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:date:references:message-id
         :organization:in-reply-to:from:subject:cc:to:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CrVb6MU3DX7g6JQEKKtuH3d3VqUG8g4TWfmjUemfqeM=;
        b=GfDGJ+GH6Eoa4Y4xIfC2rP+aUFahu51rq4iN/CCqgYECDKZ8gqIMLCewwXFGSQSejW
         W6itT81Z30H3MDoSaCfT835lqqG7UYDFgtvdxOMxDbg7+ndEvnWIEhCVp21bgdu2tyMe
         0yKS6MQ/qKBfUcryK8gaUbEB899gOLgZOiJ/YhkTeJXYEEhcIpMMFlGUh80fDSrIeEKf
         j8bANgcnrzOlpXXNA4UPQd5L4/pNSILyzZSPJDVSHzzIDswSw2XbXM/y1JxEzTGvk+ZE
         lQF1ryrp6JKhsLR0jFDIvHgLF98FtM5BYG+/hX4UalUkczxZ6JY1k20C92j8o7qrNAQn
         dh6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733335615; x=1733940415;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :date:references:message-id:organization:in-reply-to:from:subject:cc
         :to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CrVb6MU3DX7g6JQEKKtuH3d3VqUG8g4TWfmjUemfqeM=;
        b=anuizdrILd4udc7/eUK5Xb9KszNNh9O9Na+i0sspbQrjqPBtObVVrK7uQbrI49ZgTR
         HZgCReyrhjKjsXHGq/MmB2ach+T1CAUyBG4eNr72xuV49tuknkNquhw1tkjjilAIcXOR
         w0kZNNaWBBDeUx90dPIvHthTZHoNiI4NqQJJw/IMrc8wwNFmI+7cQmWLRJfrJnkAq+pO
         HmNL7jwOSJFcdjx6gteVGTTgUcajnY6muGflooLe2OsWA45RWAC0QObcoc35J9OMe+gU
         kQ7d8iw9MJduo7D1t34qFvveyFUPW6/y3heJAqtLwAh0Lp1rCoUtIScAbg6bMMMBNa2y
         9a6Q==
X-Forwarded-Encrypted: i=3; AJvYcCVhJ0kkrzb2KSecrOOmbdP6YVfPFrC/hjm43CGqNnbEMb8F8ANiYw6MGvQIDA248ILT5MAfaQ==@lfdr.de
X-Gm-Message-State: AOJu0YxZfHM33Fjl+8RpcdLqeZQMH24yQ1umQptTC3d3RTEM1MJ7m5Oi
	/UgyKltiVPMkRwheMmXvB5I9BmsI6SsL1Z+jnkS/trxzhAOa8Vt4
X-Google-Smtp-Source: AGHT+IHp+gp1vZUCGkKvHHV+cAYLgtFpuaKWMNC/qXUr4yRWj86wBi+nd00UMn4Vs3XFkXgS7L7R4w==
X-Received: by 2002:a17:902:f681:b0:215:577b:ab77 with SMTP id d9443c01a7336-215bd11c35dmr81364615ad.39.1733335615010;
        Wed, 04 Dec 2024 10:06:55 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:e803:b0:215:2b7a:5c04 with SMTP id
 d9443c01a7336-215f409342els268175ad.1.-pod-prod-02-us; Wed, 04 Dec 2024
 10:06:51 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCU3utTV6a9ucfF03vd1OzxdaR4dLAETKoO22OtWeyRIRBTS8AO+IoJmKeg/KqbmbMD1ZcLbsco2FpbU@googlegroups.com
X-Received: by 2002:a17:902:db09:b0:215:5bd8:9f7b with SMTP id d9443c01a7336-215bcfaacb1mr107904935ad.15.1733335610724;
        Wed, 04 Dec 2024 10:06:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733335610; cv=pass;
        d=google.com; s=arc-20240605;
        b=TS4e6SFRWuqVEk56rGi6wC4MUC8AaaTQe2+TD9cA3c5DfS7TvotMDORStiEGZ8Vy7H
         iJw0ycVwASlzhpqD/6Mij9w5Llm00HE/zjfjp8RwM43ac5qMT3suEB5YMlPLpGMbZdPb
         u16l4po2mTRMpL8u1GqKwV6aenqfcB38OMCF9SEugh4nZ8NCV4r3+jOxfLjIE24FFNw9
         H2xA1icSksALqLeb6PR1QHPxsDlRJL1S9H9b4kqxaf1c9fZ1/w5nqXQ+vv+/4h1YjurK
         IrCcD7cCLD06hE9+Ix+dZJ0zoioBUQch5pKQLvczMfZtu++se8/VGLcd3HCNd/qtpPoO
         8nDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:date:references:message-id:organization:in-reply-to
         :from:subject:cc:to:dkim-signature:dkim-signature;
        bh=hnIZt5m6+XM+EbnPQwjWpYWArV9mPNARoXqP1ZK2Xs4=;
        fh=JdCrMzG9wUnNnsF6TcwRbq2KC+844+Dz2Mqtg+JPeMY=;
        b=hfEW7oIhL9eZZAm+BPijGhHxoZo0dsgRUrFxDkED3+HCZP0ZWwxp7TP0X5UvS7DPyN
         XR8Ynts97gbiOrjG2CFsvHCwmfze3GvuDDyIAzx253QYM+sH+n7QZPPJF0LcyBDPxb9A
         wjNYO97SBXDydwIQWKa4FM5muwTjcPWZbwBDyfSlhjGDU7/nhGaF/9bz0LiiLYUbuvMs
         J6Xg8UEEHUb8qAGeICcNrvJ364Cm0Z2hCTp4ZMgT51QbFfB0FFudGeeRd7zSNg2WGkuc
         TUk31oYfJX1OJL+uz2hNMtAHV3jasXU8GXwASYIF7GrObgZfzL9DldiPhYmgjFh3DN6n
         apxQ==;
        dara=google.com
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b="oi/g0vjK";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=tCZdUn83;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id d9443c01a7336-2156997db5fsi3587665ad.5.2024.12.04.10.06.50
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Dec 2024 10:06:50 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B4HtYUw014319;
	Wed, 4 Dec 2024 18:06:39 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 437sa01492-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 04 Dec 2024 18:06:38 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 4B4HvgdV039998;
	Wed, 4 Dec 2024 18:06:38 GMT
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2174.outbound.protection.outlook.com [104.47.57.174])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 43836vrc20-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 04 Dec 2024 18:06:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LHwBs68vzX5Bqj/Uv/r+ICZjtmBbSmyUOOaTuLOau+A2k73dNtQaWxrdGYotjPzSj9O8G/cKw9gPzLJbtdBPKQu/mfJHPBfAFVgSr2RlLc0irjyx9C4j0REAWIJjGiXiHl4UviweZ3RVTDwU9ZkoPFrcoVt9HdtsPojb4OJSAQTvO+WbJAMAp98BiYq19JMJhxA0K83tGiwiketQKp98TWMCyVvcBG+D3JQdls+sUNDqkCBjJkmvlvtiR11M0X0i8ajx6159LIg9Gd2IwAFeXmch+sYadg5iG1qMISj7tEm06kgA+fXw/eh38Ny2QH80SXvCvFEfEKSr5VcWc2n6Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hnIZt5m6+XM+EbnPQwjWpYWArV9mPNARoXqP1ZK2Xs4=;
 b=SkLqIgd36/cNHH7+MnhYNRhlp7jZTxqJskzz5BZp5+boae51fqgqLGM1jUfSkzjrCWr5FRZ/AO+ZydIsk/rwyKRkMMQtR9S3scua0ia0zlaVvv0/gOlVJKrJ5APXaesCsALCg9EECkuC9ct2v8sYGLG561lmSHsLnkBvhQRHGWjMgRO4e/4SSiefbQ10GyOICxsnOt/h7I0oZsOtz2p8k7K3ksKd5r4h+/8+yGtfXeEJ3fNAUKczLEYO+6k2E6ig5QzTtKLTaaUURAe32XF0VeFGcEMJVca+7MH/J2FEJfB4o/EBOOB3vBcVxKFclWJ00C4augBgMUjxs8lv4F1+4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CH0PR10MB5338.namprd10.prod.outlook.com (2603:10b6:610:cb::8)
 by MW5PR10MB5825.namprd10.prod.outlook.com (2603:10b6:303:19a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Wed, 4 Dec
 2024 18:06:35 +0000
Received: from CH0PR10MB5338.namprd10.prod.outlook.com
 ([fe80::5cca:2bcc:cedb:d9bf]) by CH0PR10MB5338.namprd10.prod.outlook.com
 ([fe80::5cca:2bcc:cedb:d9bf%5]) with mapi id 15.20.8230.010; Wed, 4 Dec 2024
 18:06:34 +0000
To: Thorsten Blum <thorsten.blum@linux.dev>
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        Mike
 Christie <michael.christie@oracle.com>,
        "James E.J. Bottomley"
 <James.Bottomley@HansenPartnership.com>,
        "Martin K. Petersen"
 <martin.petersen@oracle.com>,
        linux-hardening@vger.kernel.org,
        "Gustavo
 A. R. Silva" <gustavo@embeddedor.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] scsi: Replace zero-length array with flexible array
 member
From: "'Martin K. Petersen' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <20241110223323.42772-2-thorsten.blum@linux.dev> (Thorsten Blum's
	message of "Sun, 10 Nov 2024 23:33:24 +0100")
Organization: Oracle Corporation
Message-ID: <yq1r06nqq5c.fsf@ca-mkp.ca.oracle.com>
References: <20241110223323.42772-2-thorsten.blum@linux.dev>
Date: Wed, 04 Dec 2024 13:06:32 -0500
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: SJ0PR05CA0136.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::21) To CH0PR10MB5338.namprd10.prod.outlook.com
 (2603:10b6:610:cb::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR10MB5338:EE_|MW5PR10MB5825:EE_
X-MS-Office365-Filtering-Correlation-Id: 009bdc46-52a0-453e-9964-08dd148e63bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?5Z8PdS3mLRukiod5VhL+9B9zdHe5TPNxEyb+l1HdrTZoj2z3gGGySMKNP8gu?=
 =?us-ascii?Q?nU0zmsIvuUAGi4mHotaw8q968UZ56uDvuB2HsDoprFDW/LYAeNeEt88g5kgn?=
 =?us-ascii?Q?ygsIxEhHRs9Mp2NENqKIDjOuq2krxBzZMS8p1yN4gaMXfNASlBrYkQlVGySt?=
 =?us-ascii?Q?iWxmu07czRUPpSLPBxTqVQTgJbbaAsgAxpxryrEuWRbhbmM9zfI5GPSdgdgX?=
 =?us-ascii?Q?NxS3oiq4/b5Jcr4vydJoU2Daqvnwt9EYIgZr99fmKsT5gtH94mpSQ4wRnP0f?=
 =?us-ascii?Q?pozCQy3VZ89Ak6fMCQUakD5fC3qxee1G3/zsvXvl5Io1kKsXeXzxi1E5GBfE?=
 =?us-ascii?Q?JSMvgLiioQooMhmRPJOKeM+YwsCtHk4rX3sBn1haFej2e0OBHX3r4AfZ49Va?=
 =?us-ascii?Q?Fi4MH7sdKdgFDTmcJ2aNg4wkeqiNaz8KzKh+vOGMSTWOn9jMdfj7dd39Gy/A?=
 =?us-ascii?Q?l2v2iH2mWrp5swur9HigmNRsrRqiz7R7/KzkaQtGrybhCzPf3Uy2K7z7z70Z?=
 =?us-ascii?Q?6u5Dj94lLjI/EKttufUHl5q2mDUyoDdKbh4oK8hq6iFHA1UoAUyaObD3Y00k?=
 =?us-ascii?Q?n2COX1PPnb+Brem3nyUrR+9Q1sMSgQMD5dgaNj5vEorCIYuv6VJ7MusGAL/N?=
 =?us-ascii?Q?Jam5JLYeDyeHojHM6ixRKYVRxgyuo5IAsYRnPSfUGi/O8CVFKDou2ejYFjfS?=
 =?us-ascii?Q?nCK57DUJhi5AqP/HvIBWXGfA8jZoDTc5yKlZ8AyfLiM2PHfh0t2LYtegbMyi?=
 =?us-ascii?Q?CtmDzzCcFDFwN8uf6+9zp0Qk65LqKwvFp+Urm6k+b7kChOz41WFQ6OJqPOIV?=
 =?us-ascii?Q?Udov3OUD1zfA+fXg2pm5BbQhZehuBg6E4zIKSL908+D/KkAjJHMvfMackVrJ?=
 =?us-ascii?Q?1i4QayJBbx6VV9CgEDWeVhdhueq8HVAW/2IpGvwLuOWfK3y1RCswOFsji+oE?=
 =?us-ascii?Q?xu503iLxZ5ZABPekNFACYZnjxwhtOSCIQCJbtQpUwOJUQNrAM+vxbzXSvuzT?=
 =?us-ascii?Q?6ZRDWpZSYLKiSoe6ztpyDGCh/Zsxj04WhpU3oOK5RmvnnQyqqJDvCwKsxnk8?=
 =?us-ascii?Q?u330tjh2F/Z/n4azeV3D9DTjaFQKbKLZnjQZsaMgD+KqpHAOT9rzy3jE/iQR?=
 =?us-ascii?Q?43njreIV8Tfn5sP3mCDYVS9fooY46LKeNgCHcVIjl/oWCRlYdOQdyokSraC5?=
 =?us-ascii?Q?LymambipY5yIBX1N2ZSHuOvI5EvQdzqEaP+uxmBaGAS+MnKXqYEdEpj4r+0M?=
 =?us-ascii?Q?6shI2jabb1XQLUCesDlPnnyd/SJlaOCxZxQr1tkT2My9zyXOEdoSbwgl0n24?=
 =?us-ascii?Q?kdI5EJWtXCQvRxa05KSN8MXJb6ViO0e7wasu0Z7QmDNN/w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR10MB5338.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tq7lUD3t6C4aDfDEIfDeOD5Lz7DfBgzvlxR/F7U+5WeGBtPAzqshVrEyg2I9?=
 =?us-ascii?Q?8gi7rfNbDt1bk2lm26lnhTWhayBshWtjnLNRzjU6hLH7bndQ8D1J0cFffuPE?=
 =?us-ascii?Q?33+sZzIUG92WizhphuUuAKfo7+u0g3Gu6+dO6iYFrCViIqCbvTeMuJN6KdWQ?=
 =?us-ascii?Q?tlQGR0Uu/3fFksTjz0IqE+Zuq65vYCiNPvPY7TlLvc2vdiJ41fu5oQBQABui?=
 =?us-ascii?Q?/5Tyok29LBl2XqFlhoeN5sNdGZ25cZxTUlXKQ1tSQUK3rw/ZZxiVPS1Y4bA0?=
 =?us-ascii?Q?gxSk1lPR3xYVa8SUxLMarWmjYWKUjwKWq+SSeg5G5njfgF1Oc+1FQH+4ibNO?=
 =?us-ascii?Q?TZ2POt6PAeorAkOV9ZbEyxXUtEgntNe5bVQl4KjoB1cUfeFTHv1yKP0a5XMF?=
 =?us-ascii?Q?189B1PBTYpW5ydeR/+0LW5KA1g9zqKzIU0Ihx0aOhTHaqUhQ49X409DOR7qO?=
 =?us-ascii?Q?lFEEAGPqn+SWs41ouHZc1CYqLA0kbMyB+k1dtebe8pM+lS2oReimrsbogKAf?=
 =?us-ascii?Q?bGcVWG2u1w58NEoTLTTBn/IHgCmuds7Jxmpp9lIwVjFNAti1B+8AoG0jvrtr?=
 =?us-ascii?Q?/qJXMjQbAtnw8epSDtyAGqSWt8LiiUDm7iMbU+Ee+seGVvLYnHY6K9bOVRvQ?=
 =?us-ascii?Q?Lvjk3+BjSTRDpVITLj9FryVkWirD0fJO11xsAgpc1GevXaj/s5AEQOW5/i1+?=
 =?us-ascii?Q?FcnG4D6Za6ilzWH/ekAw57LFXVZlUCAGdF8GcLz1AWuHhRyeSgZR3HhUtrm+?=
 =?us-ascii?Q?FnI3fghAhJvtuj7lYhCXvh7LEExeL1V6+yxFFgG2D2N2Dcf9ie2vbBn35klw?=
 =?us-ascii?Q?JykfavsBZnvgxieddR1ENnpgvxU68GzPHZNuZVHHWfPYeX+C2j5QHnRrbI7A?=
 =?us-ascii?Q?KJ0uPYfjng9iRPBxXPUEE3z0PiHWPax6pxe700onqBaATKfvI3eo4Gx5F39O?=
 =?us-ascii?Q?g5WemX2x0lfl+VbBWFZ/37hhP7y3GCXag3q2weNXBf50K4wVrnFp3X4UALOz?=
 =?us-ascii?Q?0LLi2bIrw8qfs0aC3gIlohJnS/atVHAJW4yqQo/SQTFTHL+TIQ4C1pD1MNqG?=
 =?us-ascii?Q?He9nAkCbbustz8Sl+TKOvM5TVd3VRBeZVxamDqfPIuI81SqEjvNV/vrOxshf?=
 =?us-ascii?Q?ncFq2yl/FGj9f0fGYk+JyPPGpiaOrPYfJzJBtyrD117vs++nZdD6VOmaYzsN?=
 =?us-ascii?Q?O2HkUGCfwb5EnI8vmDJWqZR78JcV0qpgfsWfA5cCqLSh2EJIT4/RntFHaZ6s?=
 =?us-ascii?Q?izjmLloNeows86hhZuGf3EiejM0knmIaYi8gYWst4s9ZkG3Oykben58zjrsu?=
 =?us-ascii?Q?gINmomaLYMO0GY5uK1nTWUBYoTr4vEkkQZpdklPZO03Tk4qsNlp85b+THnfq?=
 =?us-ascii?Q?vgHORu6rROhTmjNyhDptNhAjwNSdYxkQ5rI/HIvRZmDpY3iM8lYUtUjCOUrZ?=
 =?us-ascii?Q?n+o+CP0PwmuXW5Ln4Zi6y2XOaM0lkERg2H4hH2/Z3gvHJib9EIKa0tju4BmT?=
 =?us-ascii?Q?wPg2xyYYE5APXKAOlQTSPjUsDoP4Ga6ymrt393/QSLEGIaHSP3ToY7kjqmwb?=
 =?us-ascii?Q?296FJdM/Savq3BOYfG6jWMivGTXbebdGAavWxqK2QRUHs8GZwFYlr+r3IwlE?=
 =?us-ascii?Q?1g=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: bb8kLIki69iUAJckjzcvVL78xsPfwv+QsF0pgKXASqIvMzbWOMLz33DP42WRBq3ApaTHL2Kb0Ev6NxoiDAbTsp0HP/2woouSaZSP9N8yeNnTZfN4v0YpbUljPp0UbB7yn8t4sYxat3f7DWYUUm3AMgE9pLBulbG4uqWg5/GYyFpEHmOjF5D1fUnXVYYpy5HEPGs5k9h4rscicXhf8Qi4kYzU3mxwWiD0D9vxxkBomQtP5uE2kVURvyJMmEJ0JO8sZh39KqWiXu4J01jYwndG+DClnwtBToRV91OCrb62JbIIW1dtC6DQ8cYGQbjA5C42MfUnQam63upUa/Yp8kZNRgd6CNOljwIqKQOgX9Tu5vVLbjr/5JDbjdiV2lCwxsUTXP5DtGLAgpM9Dm52c5Fh47IC5Hou3C26t4Yndtxg/+qIo7U81DYWbxeig15Fzx3I4BPmZ3dVd3k2O1XW3yCZGar7yIHvIAjNoC8FgsouwzHQQr3/BuDogKX3Mbg6SXd0+wF6krmjqGJ4PodLQFtV2vZj9X30HhZyBjTPiw1wpbjM36tQQJBm5BAvCE3WIWNb8N8ZzGPjJaEFeMO53MZ0DUdDYqlJZgdNaYybrQzC7pI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 009bdc46-52a0-453e-9964-08dd148e63bd
X-MS-Exchange-CrossTenant-AuthSource: CH0PR10MB5338.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2024 18:06:34.8908
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2skWZSAEHj6DllEQnt7Ur49DOdRSekKXkZt0OSAUN7125EkOg6JPZmLOou3fUiLyTwemGg59E47o5ovykC7if8H9E3LLahU6lCyqkkuqD6k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR10MB5825
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-04_15,2024-12-04_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 phishscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 spamscore=0 mlxlogscore=551 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2412040138
X-Proofpoint-GUID: pz9sVnaLMTDVxcFY1H0-wEfUOqa6Z8kw
X-Proofpoint-ORIG-GUID: pz9sVnaLMTDVxcFY1H0-wEfUOqa6Z8kw
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b="oi/g0vjK";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=tCZdUn83;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
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


Thorsten,

> Replace the deprecated zero-length array with a modern flexible array
> member in the struct iscsi_bsg_host_vendor_reply.

Applied to 6.14/scsi-staging, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/yq1r06nqq5c.fsf%40ca-mkp.ca.oracle.com.
