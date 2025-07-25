Return-Path: <open-iscsi+bncBDVIJONZ3YDRBL5YRPCAMGQEXCJI6TI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0D7B115BF
	for <lists+open-iscsi@lfdr.de>; Fri, 25 Jul 2025 03:21:55 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id e9e14a558f8ab-3df2cc5104bsf28144395ab.2
        for <lists+open-iscsi@lfdr.de>; Thu, 24 Jul 2025 18:21:55 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1753406514; cv=pass;
        d=google.com; s=arc-20240605;
        b=YBEN5VsZfBz+8xI3Ce5G7FE/bBOCxOcZos1XMb6P6jFO+5z3RU+5dnH+bui7StDGMc
         OvHBkqmAAJvEbaXm/VlCRfgMUAEP0WpiRyVma5nEAnTn4ZdZgPPeWUxKd3XXoFaPtBdY
         VxDqwm5x7WbzDc2brZyAsJTSuRG5ZNoMmS/MBiFk8/olp0J8GZJua2u9ypr7M5P8vZnU
         FjISTNyhc+uEQtgI6P1kQkL8qFp5AEpFZOcD0v+fCQ2K1v1t070gnBPSmxvC94ukBZzg
         7+Ef/v6DLTzc7R7aAGTtTaf2hSh2/sU/NzorR2PeKHH0vc0m+e/7Kc54oiI4cuTHOPy0
         NDWw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:date:references
         :message-id:organization:in-reply-to:from:subject:cc:to
         :dkim-signature;
        bh=Grz1ePD7SCapLlb2s0Nmwd8ngMTkroMtU2ui5BXF6R8=;
        fh=3SOIGraxP/CEs5YgJFwiWgF0NSJgCHJiAMq/XxOTNt4=;
        b=I9XkkvLL6Eoa7RyyzgB4JF7zTS66Q8oAxU7GzHy7bAvaNTSH9jIw3yWbUXQIXAO8C9
         2cYnHwnRI2fhERx+PC/X017G1mRDpcqgYYYuOWbNIlcj5wyxjrvlC6BMPlc8YWdOInyj
         rzuPgDTTjt8Gqx6dW9iOWOO8NIjJa32BStA9ioN1S3lDEuezFdYEvUWZgHffvClJzl7y
         j2C3tFZhYNsv4KxmfIiex6rHT7g3r40fx0hnXttNUcPh2J5RUelX6a5m80GZ3DK+6jMZ
         7gBh7xQ04XJeXQUyVXFoge7QgW4oXNfs8D7W4cFWlvW8CESzMQ2q7y/ufrHjX7HFXIY5
         f2jg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2025-04-25 header.b="CUTB/3gt";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=ERJKxD9w;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1753406514; x=1754011314; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:date:references:message-id
         :organization:in-reply-to:from:subject:cc:to:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Grz1ePD7SCapLlb2s0Nmwd8ngMTkroMtU2ui5BXF6R8=;
        b=GT8v+NugXUqHdLf9BsqClYI8ZIy4tFebp42bU0ocLK94Z8iFXK51QCctIKkQTjOBwB
         nW67Nf6YehKZpNTdRgPin8nNh/BVKNwq9lHoz2qHRvZfgumUKbPl2jvPLXnSWDgerP6s
         5nQT2SieCujKTwNOEOEevJzzHgVsc0j8dnXh9xo6uyAe+EQZdAEON7zR5RYpFyHxN33X
         DvkjYv/4PYjl7cDJILp2OCF6pSqsH9SXhWx3q0aDZ/GbTCot6M2LeEgcnZG6XNs/L7/A
         nDuwJtUrdHrym0hzoai6RiLX+noeHQdfrLg33RjBV5CdEvZE/Tfv4TesrsQ6th9KfUgy
         XxYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753406514; x=1754011314;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :date:references:message-id:organization:in-reply-to:from:subject:cc
         :to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Grz1ePD7SCapLlb2s0Nmwd8ngMTkroMtU2ui5BXF6R8=;
        b=AzsnHeIaahiH2fHNwQOE/cQ5xgFijA0YK3ohw8oec8xNmJs8WtngIym/4yp5xQU1zP
         aTEuMun2x4jqXSq+DlcQ8FXGNI+eA6QSJ//laam4qhJVwIKq0XLdL87YjQt9eIl55dzE
         juUcxqn6A7HyYGfG3A3e8GNkk9YjTvhpZEsuWeZNw/XO+hHkDh6dPwKw3k4dRGGkqo4t
         gXQATHamYmWYc7o4Rk/h16f12v955F9c+9xQw7jqiMOmFBVI5IAhQ2oXNixyNVKGs63/
         XblhGAWYrnyygZ8FMf4iwS/LxVRrhWmJYZi3Z/Y71jlrz9uP3vEgdAy2fqTTjooLtwzu
         wM8g==
X-Forwarded-Encrypted: i=3; AJvYcCVGWsVm6X66mQKzroWWZUBzvufW9eR/Jj9epPtQ4R6oqSiKG5APTahdfoFdJSWQ4iCX7TYjrA==@lfdr.de
X-Gm-Message-State: AOJu0YydJzGnVpih/B3uZpehsaY2DGcNhe77GEa0sozUWTBhWOC8Crc4
	gCNf+KCU9h0tdtpx63gIKtxGlu7rf8ZKUagmYJ0akexmEka3BtT8zD0/
X-Google-Smtp-Source: AGHT+IFTxjIxXGcx9k8MMh5zfcFC1dFwAzk4eH2LBl9C7Ji6rx9u0pEdKpMB8pVwd2vYO8PVtOOhrA==
X-Received: by 2002:a92:cd8d:0:b0:3df:460a:ec3c with SMTP id e9e14a558f8ab-3e3355d0264mr175372755ab.22.1753406513790;
        Thu, 24 Jul 2025 18:21:53 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com; h=AZMbMZfN44bzWS7p7adR3hNPKPGaj+JFEqkKrATmwpLItogqOg==
Received: by 2002:a05:6e02:9a:b0:3dd:b6c9:5f59 with SMTP id
 e9e14a558f8ab-3e3b5192f75ls11249395ab.1.-pod-prod-05-us; Thu, 24 Jul 2025
 18:21:50 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWCIKalBxJtX3ZJQD6kpjCyEY9Dns6LJCXYE9rgKCM0cUpSVEdbmvZlkbBZ/xuvaKAAtJANcXG7C5JX@googlegroups.com
X-Received: by 2002:a05:6602:1611:b0:87c:155f:d0c with SMTP id ca18e2360f4ac-8800efb9262mr802039f.0.1753406510380;
        Thu, 24 Jul 2025 18:21:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1753406510; cv=pass;
        d=google.com; s=arc-20240605;
        b=ltmKWn+YxsnZq8enVGnoJXUcTcBFhONvC2JITxhdYDscOrtCUSEV5giDzUV2CjImqE
         5vQMM0RKtiCjKUUzQEnRgK3Lk5wuLy8MQ64BDJmO0fg4sD6gWmZreenMRZIDV+96WltU
         be9UvxLD6P7iJ0Lgdr7rYVg25DaopsmIKpWmOI7c49SEzjB2h+ZEB2q5O2z1Oi9h3TV1
         nEknPavLPHqKiBA4yXnbvKRWZVyO5OLq3ze0C6BQ7tugSigmd44f4CcCVweeBvbfuTYs
         t0VLwdB0WKWSjEvBWj4PZ4goekZ4F9QFHhLVgiZKVGTSiq773dTIzcPK0FFWYXTNErMZ
         NNqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:date:references:message-id:organization:in-reply-to
         :from:subject:cc:to:dkim-signature:dkim-signature;
        bh=bqGhykcE+IIzfRQnVRd3urMUHQb0MTouLDQPQGG5nmk=;
        fh=dj8z8LSJmU/OM2dEMLr05GokU4TJ8r+CVX7ufoxiWJ0=;
        b=DIrKNGuBAfdPakAZfk1zATeQ/0LXwVu679G/BLPE0FytYy8h+gkpemCGvKuN6sH4ar
         uR2OFapsPlBw8ok0SvaS8PDGl77GfMYPw6lmQKejUBXKsRYevEXZto3PwnVJnUm1hEF5
         e+gThN2KP/52a+hZGYn0Qr+roycIsgCPqK2C602qMtFGHm39FsdsDtsLth6wW8mRDXBP
         q7VhDGVAqBNoeOeVp5TolwHdFKDFVrpnUPGnRbGV3oi7/GfhDgGrLjf6jA7b9JMqIw4A
         JMPS9wh3xCXHkPk2CzfNTDHLIFKTKtyJGmBRnFYMALzEQHzePiPD3otW/iFbbQHw8Uhb
         sKUg==;
        dara=google.com
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2025-04-25 header.b="CUTB/3gt";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=ERJKxD9w;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id ca18e2360f4ac-87c7430cd70si17893539f.4.2025.07.24.18.21.50
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Jul 2025 18:21:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56OLkFLm011975;
	Fri, 25 Jul 2025 01:21:49 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 483w1k8644-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 25 Jul 2025 01:21:49 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 56ON1JMY011306;
	Fri, 25 Jul 2025 01:21:48 GMT
Received: from bn1pr04cu002.outbound.protection.outlook.com (mail-eastus2azon11010065.outbound.protection.outlook.com [52.101.56.65])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 4801tcfpyy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 25 Jul 2025 01:21:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QbnGWj3r/n42RhgoYphyuKz/Hi6oGouWYYwYpioFCT2qWdWntvV/E1uFksQZEF/2vxIUYXNrTHwzPFXJySiDAPXN5Iu7MaKbucwILrr64xT+tL+VSIYs7AKeUV7Ibd0klUU6kv3Fqu7jJMxugNDfLrBEBORsSFGEYNlx5RUUKbhJEyZgSBXvAt81X8tudElFbQNsjymWCRSeJV8f/YnosIO72ShRhbB5dA/QnRu7NR8v6+dbRPYEGeI98cACjM49fKI+BayIo8AZY7lwAfOIUibC2sl+hspKU1tkXamcKhn3KFzAj0GyysJib1g3ibFaRoSckIoXGX9SzR84exN6Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bqGhykcE+IIzfRQnVRd3urMUHQb0MTouLDQPQGG5nmk=;
 b=XlXPXhtrrB8OvnYdYgqWDYL6uTQUyYY6hda6Q0UAV5xLOujkyMjxf6uHF5s32RHmyYkEQUEaEWBQZoQ/IRSJIEpVV3Kq+Npv7l61f8JF0sp/nNoBtwV9uh5BrbT7PS9u1vCOVa+lc4wNGeaFJvNIHt8dsVgZFPWmY2rNcVNyaenXORS0Bfph/6wg8PmfN6jSGG6wXW2Bba3SnWofOUGuyFqd+WJxqoHX2jyZgsyFDSjT+dHkAEIAeaUIKyfYt8VBTQWBFZEQkPQys0YsJMjxDudlwMR/cb+35LVCvGeO3gBzIRHVqIrel9t5qZv0LDb4EEvY354f8HHZcmAnqk+OOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CH0PR10MB5338.namprd10.prod.outlook.com (2603:10b6:610:cb::8)
 by SA1PR10MB5711.namprd10.prod.outlook.com (2603:10b6:806:23e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.22; Fri, 25 Jul
 2025 01:21:44 +0000
Received: from CH0PR10MB5338.namprd10.prod.outlook.com
 ([fe80::5cca:2bcc:cedb:d9bf]) by CH0PR10MB5338.namprd10.prod.outlook.com
 ([fe80::5cca:2bcc:cedb:d9bf%6]) with mapi id 15.20.8964.021; Fri, 25 Jul 2025
 01:21:44 +0000
To: Li Lingfeng <lilingfeng3@huawei.com>
Cc: <lduncan@suse.com>, <cleech@redhat.com>, <njavali@marvell.com>,
        <mrangankar@marvell.com>, <GR-QLogic-Storage-Upstream@marvell.com>,
        <martin.petersen@oracle.com>, <jejb@linux.ibm.com>,
        <James.Bottomley@HansenPartnership.com>, <michael.christie@oracle.com>,
        <open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <yukuai1@huaweicloud.com>,
        <houtao1@huawei.com>, <yi.zhang@huawei.com>, <yangerkun@huawei.com>,
        <chengzhihao1@huawei.com>, <lilingfeng@huaweicloud.com>
Subject: Re: [PATCH] Revert "scsi: iscsi: Fix HW conn removal use after free"
From: "'Martin K. Petersen' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <20250715073926.3529456-1-lilingfeng3@huawei.com> (Li Lingfeng's
	message of "Tue, 15 Jul 2025 15:39:26 +0800")
Organization: Oracle Corporation
Message-ID: <yq1seilrrp8.fsf@ca-mkp.ca.oracle.com>
References: <20250715073926.3529456-1-lilingfeng3@huawei.com>
Date: Thu, 24 Jul 2025 21:21:42 -0400
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: PH7P220CA0013.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:510:326::30) To CH0PR10MB5338.namprd10.prod.outlook.com
 (2603:10b6:610:cb::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR10MB5338:EE_|SA1PR10MB5711:EE_
X-MS-Office365-Filtering-Correlation-Id: 59ac2af8-bf8e-4d09-5048-08ddcb199e46
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?SlSkmdMBl7pXN5pS8lBE7qe9n9WtHTZjQc4HCPkky/Nl6KSuibi1RUixwLvH?=
 =?us-ascii?Q?J4OFPJWKT6cmoLwpWc1EC9lYb6HplulPHpg1cbHPb2dQeXOxalSp2GBPxAkW?=
 =?us-ascii?Q?y+Xag0qw5w+Sl6h5rfOprL02KmBPDSGrtSWlU2izCAlfx07WFsl4ifHZUqcQ?=
 =?us-ascii?Q?8h+E5DKpyICS6YKLI0c9SF0HsQ6+ULvTpoSbihi2EE5ln7kZQRCFVtlaOVcL?=
 =?us-ascii?Q?rcYqKPEHtotTMuolqgxb337w7XRzejvyI0LbeEniIhhpNxiMd0JTN2W5eVa1?=
 =?us-ascii?Q?Ix8EhfA3uTBcZ7o3p6mO82HotkJyWYKA/fC8Pt1BIgI1aqpazKcdoKXKlEj+?=
 =?us-ascii?Q?nZpl0989ClbsUgZs1BT5WJc30SgVmGbVpDPIffzJw38MBQ827DGjJSb9mcd2?=
 =?us-ascii?Q?mlJy8InpWcfusRY+OUplRLhaN9sjB4/HeXhPfU2ypRsDjlmt3hRxFKcVVvYm?=
 =?us-ascii?Q?moukt75R9PtmF98g7tn3HW74ekJ91MwNUM3fumYG/J4ZZtBBlEfZCX+p3jZL?=
 =?us-ascii?Q?tbZUTEmb4mHk/WZt0snhXKK4mQ6muxnKTj07uUZDlwAs68qyMLGHqUawrvrT?=
 =?us-ascii?Q?1Ioj5W7NYQH6/IldF7cVAKHcE24qaHEvaq3aRyPSFPk2bFkerWnm9aK2E36f?=
 =?us-ascii?Q?pFunUoJm81pxx8eWhk8TdiY888qHWsBQHxFy2Zm8VJH3IUVsrGEPBiH/HiRq?=
 =?us-ascii?Q?rxQ0pP6KD1zlADwLB6+4kdzmC9wWgkNeb7oJAJOo1/dGgJc8yaJruZQGCzs8?=
 =?us-ascii?Q?JqPU42WEPwIiqwRT6AZYuXVK/UMAR0pJP/bxcdWYngQ/FGFLUDqhUgtNhmpv?=
 =?us-ascii?Q?JmMrARbQDxbo/PdDfTTiptpykAHU7csDCHlO+KoL7pCeP5qc0whoH6utcKN9?=
 =?us-ascii?Q?Ujmbr6tnERyQVobwWuEjH5ELHZbHKdZ2D7kBtBqNoNg2sr3XXynOJsqw+R4k?=
 =?us-ascii?Q?neGNPb9fhBIj5ovHp2KT7bf2nsU4QnBRpZ1/RcXZfpYIfSD4motpQaJoJgar?=
 =?us-ascii?Q?b785cz4bgChVGuF1rfzTeAi3mN8ph8onz6Kj9aeoljc5GVDwg5wJGhbLUGCr?=
 =?us-ascii?Q?6zaVpuOCeevUsug00w1Z2JmdLoVW0X+aJBnkjo5jgw4zN8dtE4g9crg+OFPD?=
 =?us-ascii?Q?kldUx4yEnAxUsAx7RLKTjy66/vSs86hQbIt2P8wPVgksMzJb2fjpkqohBPDy?=
 =?us-ascii?Q?oGIUokS87juS+S9gBNcdyA5aQG4bESu3sEcIo3w+G0PodfpqS4ZNvHSECSvR?=
 =?us-ascii?Q?cHPdAzfGOVqLkyN6QAQntzJOd+tSiqI2Tx/qFq/Cjetu6w+BfOXeu2Gumbkd?=
 =?us-ascii?Q?xVvK+Xt3je6C9vPcjOYuf7JnBVYMLmvtSrasSLCYCEbDgwkUZKJSKcVJ692N?=
 =?us-ascii?Q?76afp+ApNfFeDSGhrGIMn3P/Pj9Tknfej4UWpEy4DM+9Pj+SaCr6Zh+MgQVt?=
 =?us-ascii?Q?lnARJ+zwWWI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR10MB5338.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3dK919fIMoDPpzfLtLoPX2ArJ8fRWLXNUn+urvjgwZGRZhQYalECSUg+HowD?=
 =?us-ascii?Q?hu4vMqd5irgQUvs2UK/6IMwGdaqlWayKJ34iHmIhPRcoYJmOsp2yszyjpGrs?=
 =?us-ascii?Q?ADHwWGlw/UJkeme/r3KUO0nFVGeD0pJcb1ViVrhb409EqRupeb9chKnVs+sO?=
 =?us-ascii?Q?ts+kpuVPeFEQKbEmn0xbZwMks/oT5rVA22bYqUIFzjWHGYzE3K4rfOliBwXl?=
 =?us-ascii?Q?t/wzsTzHYDxOE8c1ASYVJjKuLP+NlpzlIzqPh9ZpcXR8c4nSlgE6PB6Thl/K?=
 =?us-ascii?Q?gHMN8+ST5T7NHFrkmNZCBWwecm4gal8/6tXCHTaz63DM3wj//nX9b4WTr9eP?=
 =?us-ascii?Q?lFU6lYKnbDk1hKF2FMZkVa9vbQ6WNA33VSecv/ujWmkddfjCkTrRqcaapEk+?=
 =?us-ascii?Q?DEt3Ci0DaFSMV44YQ7B+LoH3aFg1obVByUrsgJiPZdVHfab5l/J3IUdF43PI?=
 =?us-ascii?Q?zHOs+f9c3KVE6bI3ucl2hcpqPUgJup79WXLomj6MQy19FiJrHcM9UfcZY1Lq?=
 =?us-ascii?Q?6lNL4e/YTSgNkqgL7MAayg/G93rXebd1Qkgk3sLLMgYXynPWqPxS760aGVzy?=
 =?us-ascii?Q?YwAyuxVrd+FKE9Xo/S9gGwHrJygWH+XuI/o6Z/jW4pvWd8koWGu0ZDyFfyyi?=
 =?us-ascii?Q?lzlbwSqwykP8+5Gyq/JHHLihQODXUY1XCngKfa1KSV+35v7bFxISU0Cw54Vn?=
 =?us-ascii?Q?vNZiDMzJDAsl3f9Fwd3oQIyECq0V1uiBbig94fHU6Q0MfUfkb2ulFSpdlxIn?=
 =?us-ascii?Q?rUIHVzOTsyJqZwUg7Q/INLZoJyvS4Mr3V4REjNC6OvcBQg+4HqNPfid8P6mi?=
 =?us-ascii?Q?jmYviLUSglZJg+/hpo5yXKU5tKi1XyPF/SJ/m5F1dRz6eRHKwwyWfs8Y0vnI?=
 =?us-ascii?Q?XQ9bYqZAlI902CdrQPZ89vLZem2zxWcK/8p9msR2pVjlSWibcfDAak5qq+bM?=
 =?us-ascii?Q?+zLZqLfTyK0sLhMh/1kZVD50Rpj59/0wwSEB9rX6azwzI2CBpQOsmGUIJQZZ?=
 =?us-ascii?Q?L9fJS6fA2FeN4pE+0m93jAfwVEUl5eQMI6nRJHlYIsGba06YuU0S1HwnOGOI?=
 =?us-ascii?Q?KmVhcvzLgrVV8Ot8JwH+afIk75EVa1soe6XfAuRzgFpTu2njrHzn+JbjgBbP?=
 =?us-ascii?Q?0Faq8XXWFVfDb9SY98YyZWFYg1Ug0JcFBLEpJwSE+ZImiPouSAILfReUDEd1?=
 =?us-ascii?Q?vAvmELx92a/Z4c6D555vEgU+btbSWRr8BYNm/dGsy6+9vRSN8/p/rMmh88x9?=
 =?us-ascii?Q?FGFKV2vLhKB0083MEnC63GojwyEKEWgDAMMihAZ2Xb2IppOVmb1xPhcuehzF?=
 =?us-ascii?Q?w/T3EYE5WHKKRzMeTWRRiaNYCCMZAbHAXPQfm+b7WOcdB59MOuFENSRrqIR9?=
 =?us-ascii?Q?V/0UKbDH19/SEfYSypIkYngfGkuno4Cc3wMspAlGg2FrQSLqLAOhfg0IehQI?=
 =?us-ascii?Q?cMbi/h02ySwpEECq/LhB92E0LTvm8O1G+rrRT+uVdAoz5QlWvDTVdEWOFaCX?=
 =?us-ascii?Q?Tu4LN9iBBxfVT84B1nfHSI9Tjw6vlmsWWHQ6wgFeK+7xuiK0qrzGQLg1AHhf?=
 =?us-ascii?Q?NgoNOL21Jf5d/cqjVvGS5q+s9J9mbrXWN6rH2hoXuckCUlwOBSfuu7vdj4eo?=
 =?us-ascii?Q?CA=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: wHPzPDbb7Yk9j6tubgrG6BPhEgkxBKfcLf5Y6rsM3SFObcGQ6ZSy1qIxjTxgsWgGsFDfshen14ZiSX0R+ciIKd9Fbdo0q2NJkjdMnyqIzojym2iizT3TriEbK/pi0YuqWMXXdiOsG/5ubwBrnuRVnRShbRqxMnNHBY96wbRZy6XSzsX3gkZgyULaVGVGfgffUohESw4jCBQPB+QyN5ZlQWAkgtRyXxlWN7XOyQnLymCU7bks0E/gl4PpXgTBvtd7pB/ds3jcgc0hLTpN4vy3fkfLgCeaLG/Q5HED0PZo2E8AY/0gXYLvRvCSlZ96WYxfXFHFl81fkd2JEIMXM4ixRKEiQjQuWxv/t9LKTBt7ZvOW6GHTup4CLr0V8PWXNfZZkQcjzBdSEPm8IJZbFopuDMnaQlZbJ4qM64a124PtzH8zBr8U0HLQMDYSgNgSJ22UIrLkGxsh6KB1XGFOiCnvhtADobGmxifbBDSSLY7b4HFUW0cqqrs17O/QF8cKIufAlaZ7zSHV5U05eVGB0lNnQvjruL+olF67aKEmHzBk+mOyrjabPW79t+LXOpwrr60q4rCOqcZGtZyJHO1TCuc4uzpX64IOc7NjX3FO6DTAU2U=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59ac2af8-bf8e-4d09-5048-08ddcb199e46
X-MS-Exchange-CrossTenant-AuthSource: CH0PR10MB5338.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2025 01:21:44.7665
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dWAbpTxqbLcAYeontsL36eHldb7HGuxrqaeedn/5G4wB8ahgK+vr03kZwgdl6C4UNh/n07gOmv/fDny/jLjSwENsdcyLR/A6wIkLqIQ5C5U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB5711
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_06,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 phishscore=0
 mlxlogscore=824 bulkscore=0 adultscore=0 suspectscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2505160000 definitions=main-2507250009
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDAwOSBTYWx0ZWRfX9FuwiNSePcCG
 BIkj+QhAf2eK/ImozNO4pRPge/ZBNb25naF7wM4+2f1qMiW1WgdZm4O2QVs0SSjCDoqSijHDG3X
 xLseRMcpZySYwio67okwHRZwDMhkaitxTxJIFURbROUfAUP97i7xkRFG2QR1Z59TorsDKlxgS3O
 +j/SmCD/7K3skLZAhyFJupyrGa6Zzku8TYWWb6DAtzVFjpWO4pJLYNo9cbEZG5zUsfCOQ18oZPV
 1WdfGVJfKwObmdOwn5uXi47YXqyKXMXR44IujT4fckZmcJGkrJHb3LN2tWSvO8BOE+rUNhvAaMY
 h5OL8I6Vd/RAlB6t+q8n60i2oKa1nibAvPXfum/vip6i2+EhicmlaD7ciOWvt5ujb56fAUP6gth
 s0Q3soNwys6DwKdSdp18M7eMN+TgrD5GR2m757/yyZLQXfmNMINGxCclSts83biWA/XcptbQ
X-Proofpoint-ORIG-GUID: j9WtdZYeAwpTGPh-QYYqkkhpnkv6pSVw
X-Proofpoint-GUID: j9WtdZYeAwpTGPh-QYYqkkhpnkv6pSVw
X-Authority-Analysis: v=2.4 cv=JIQ7s9Kb c=1 sm=1 tr=0 ts=6882dc2d b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=Wb1JkmetP80A:10 a=GoEa3M9JfhUA:10
 a=cewXuGIsSzsw8c2jRYwA:9
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2025-04-25 header.b="CUTB/3gt";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=ERJKxD9w;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


Li,

> This reverts commit c577ab7ba5f3bf9062db8a58b6e89d4fe370447e.

Applied to 6.17/scsi-staging, thanks!

-- 
Martin K. Petersen

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/yq1seilrrp8.fsf%40ca-mkp.ca.oracle.com.
