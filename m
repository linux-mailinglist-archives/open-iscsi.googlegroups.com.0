Return-Path: <open-iscsi+bncBDVIJONZ3YDRBPNIYCIQMGQEWXBJDSA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B604D9347
	for <lists+open-iscsi@lfdr.de>; Tue, 15 Mar 2022 05:21:20 +0100 (CET)
Received: by mail-ua1-x938.google.com with SMTP id ay14-20020a056130030e00b0034b745640f6sf9196194uab.15
        for <lists+open-iscsi@lfdr.de>; Mon, 14 Mar 2022 21:21:20 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1647318079; cv=pass;
        d=google.com; s=arc-20160816;
        b=uys59nhX6EByeStRCP94qeFcrhSmkcBe4JfqwzXu4F66gLpeMG4SAYQ5VFyCWBo6ky
         qY98LaZaNfe/0oh8fW9J+Yp46kXnn9uApolwoCYSiAY7Fb1BEwhxDJBzfLVWxQ2hjzCY
         kuRwV/MTV2DAqN8IxTZtbH2KwCklnT+300KfFoNELtrI95jttXIsMx64aYzruv5wmNxU
         hg8rP8nHy0WuW/idjLcog0lWa39tXAsxWrIuxcc27nmx+JPoHh924J6nodGEskRREnHo
         /V43qaF/xhXv5s12jkRes9TOl0ZlvrqfqFQrdjiXBGr3zRSYwX0+Im0wHJaNMsFfcjNn
         UHQg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :date:references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=06frJnLcb0nRzmU5MfwDfFLeEk7L3zpBWGGRP3RlciM=;
        b=p7w0CGYBN0A5EtzuB5ii4AuddfO0hKXwnLrnC1PIRolaVueOcK0yEFujTG5YiR9Ogr
         jSep7ynffJ6tR0lm0OiQ/ZYm8ormq3n7N4HmpX3YNekHMxy81z6dLO+C86GkuQrzhwAK
         qZdJb+x6nhBd5NRino9xBB+eY+vRITiMiPwMoaSuuVqQmPg+Vm+HP/eRp2KZGZT5mY0R
         xeQ2gG1bNRvuWnVaEsfqHb3ZB/dqPVPmDsf3ubUjBhSNRCc8BKygx9oZPobGqUHL8nph
         p40BZokteVQ6iEfMnQvNRla61SJ1/FN6REQGjLx/xk/HXRypi6WAHVPqcYmSs0/piW/W
         kH1A==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b="ZP/06JhH";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="I59K1/ry";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:to:cc:subject:from:organization:message-id:references:date
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=06frJnLcb0nRzmU5MfwDfFLeEk7L3zpBWGGRP3RlciM=;
        b=F0kS41Iyw98xapbJpmi1o6kJVKi/YVmNOhwWkeLue0auic1NPEgmw+363L3AEG9XiN
         FDb1pmZuD545UOpeX1XhBAK+NewG6csBvupEofh3AX3ZtINqinXKsWgiWE8IYLWxFmI9
         YlUAH4fQrr31yVP5ZHX+zDxM+xD4vJtXhfa+Sc0BRJQDiP/hIbZbnJ8hY1XvTdvy2XKS
         khTn8GIjzrGzm955UUJk2nAGmrSTTW1mAWRl8ca5A17bDpHAKE0N2wt5vqghIJWxC7HP
         1Kn6QCmIZeEGCh+ntwH4u3UPx5HkAEvV5iW2TFCP2cDLH0WF07Jz1Gx/jMoq9Ni8dtNl
         tsWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :message-id:references:date:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=06frJnLcb0nRzmU5MfwDfFLeEk7L3zpBWGGRP3RlciM=;
        b=dEEHMGFYYUw5BNBDIRaIdZ3hkc41ImjopFm8PQB5vcFRxY+3wm13Ei+2fh940zRvnB
         Sn6D43QEoCK5z+4usRUwD5Qcpol6OKpx4nekL7bE3I2h3H/bTK4EM7n+6TWpef9YEZFf
         ur2JepMLnpOwOQRft41hSHPgkrUw2M/LHfRzslyXROkGFe73foVzgDhvVdJ+0L2foZEY
         pu+5i/6regHxtETh9LYX68icGG+pEmfvSkx6/ilwFO5pbIpOrbDuRPc4jdDFO62DzB/3
         hhbhpNTAhUFJdBU2CjWdjNSUZG+OgnDKGQDXY2wKjmGV0TyGN6Y+3QmZ1amQ+l4y+Cjq
         czMg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530XsMlDZ9IGEsI7ElGi6+21ezlaDIqFcTEkq0cG4P86HMYb3zV/
	spqGsvBRaA1b8xMD7K3l1l0=
X-Google-Smtp-Source: ABdhPJyDK7vJB5P5/r6UAnrmWeXyz9i4RIGPWc/yJ+S6wQLXMn3/OIB9c2yrRnkOnF1CGJEGZ+bR/w==
X-Received: by 2002:ab0:3744:0:b0:34d:b300:1b9c with SMTP id i4-20020ab03744000000b0034db3001b9cmr1453212uat.0.1647318079182;
        Mon, 14 Mar 2022 21:21:19 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1f:a84e:0:b0:33e:2d92:e0e0 with SMTP id r75-20020a1fa84e000000b0033e2d92e0e0ls6005vke.9.gmail;
 Mon, 14 Mar 2022 21:21:17 -0700 (PDT)
X-Received: by 2002:a05:6122:d0e:b0:337:5981:e087 with SMTP id az14-20020a0561220d0e00b003375981e087mr10303862vkb.22.1647318077515;
        Mon, 14 Mar 2022 21:21:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1647318077; cv=pass;
        d=google.com; s=arc-20160816;
        b=rA+qZUN5NJWOgrT+ZhHwhvwC1rgCsrdZlqpmKjm+SOFAGCpvZlGxpTnJjz14HCfPtj
         8/qLPRsmmrrk4hi6f6pp7ub8reJA5a4XGVo6z+9No9dq7YYIi82M3gMdc9HCHHPUkML0
         xK4SRg45Uw6Sxl1qL2z8WvQkp9r4g+oLIVOCBtLHMEV+kq0vG9acbgf0sVZzkBOcRreV
         m7CHPrt1t4NKSqVUcTjQWrmKLOYvYNHxdFbyJCa/KEyM+QwUy/417p2lK7mI2eit6pdQ
         lrOORedjZftGdn1EyICNOhFmjo8hhJuyCjV8MSt6szetYsnPCFk3DpSv2Qv+LtHQYtQl
         Iwcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature:dkim-signature;
        bh=smR3UdEtYLzxtfUpHTLl7WgqCG0UxSkvC1QnOhJ5NRI=;
        b=YX8u93Ap3jjoK4bYtVNnwsfqWc3A3vu5oueBKEZETwP7N9TMIrqy7elvtTJg7dRUbv
         natEVyEa/puYmW9gcUvRTanJHsAgDs2nWV4YX1VtVFk6++ViSudI1uKsXhKEDuxP6Ups
         too4l06ONx3zv3wi3P4x8O7nIgimaPSjXO9DvESBt5+R3h71aZbuRP98u+UcWF+KOAPw
         aa776UXkQ7l02iDq6E5awM8AU/T2o6bYGY/VYa9h+aMAF9g9MxEVUvPTXiUuq5m8oPbZ
         ikAfyrFKiGDHbamQVbK3gD0vUDx19KP4g3deDZTuzoSCzPAK9fmFaw8o3n/M3/THVorM
         oi3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b="ZP/06JhH";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="I59K1/ry";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id f22-20020a67fd16000000b00320a3066befsi843484vsr.1.2022.03.14.21.21.17
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Mar 2022 21:21:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 22F3WUGm021992;
	Tue, 15 Mar 2022 04:21:17 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by mx0b-00069f02.pphosted.com with ESMTP id 3et60r9wd2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 15 Mar 2022 04:21:16 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 22F4GvMt187839;
	Tue, 15 Mar 2022 04:21:15 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2109.outbound.protection.outlook.com [104.47.70.109])
	by userp3020.oracle.com with ESMTP id 3et6578bc0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 15 Mar 2022 04:21:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XfIdyO9s5L0RFrLc/DvfKRLddDLvPrFPsxsI7yPR1bOuTSezHlPSg468DlAFowSGA8/fif9A7RRk4jz3X+BPdenpHg+0rufgEzIhKN1uNvcQfqEjxKA2DvgJBdoHu1KJTgFcjraX8oHQTjYQhIRSlGsu4Rf942FJNC5us398azJmWkqTCexZ7FFSUU3oUqbxlg/O3e029EiuWve2xO3iuvnLBnqsC+IXyr/yJAyS4uIZDvG5+IOocrDymo2zbZ8d4CGclPNAvtrYB6YWHYyJoZtfOaMdxjzGsXvyQRG7DRAjFVgAWvXDXY8lycb3BH638IVNEnhwkJfgHqQtIZ7AaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=smR3UdEtYLzxtfUpHTLl7WgqCG0UxSkvC1QnOhJ5NRI=;
 b=VFL9sRtTKajFzJARR9/gIQVtfjR1rarJDLV5TY1wQRdmVawbr3bZRNP+43FKISaeDnIOXHRcEMdddufgwQAFvtLsxrhNwgceuVArX+EZ0CV3wruiwc0csrGKS55/AJtEBcYlaGiUqUyQN232c/CdMyXrxeeLIw0JFgDos+GmtJp1vcqynfD13tsmKJ+0Wd4YIlRxwL6Xf+AASHVDo6a/w/Xs5zQaVnEMPX65hr585MXQpmcIw4T5Rbf2uFQLNG7moNoFmIIOtTJLFMLxa6drkcbjyfyiry0+GRK0L4dohjTeGjSaAVW6mMYNzkUZIlkTP56aepnhcRjuYl9f+j6uWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from PH0PR10MB4759.namprd10.prod.outlook.com (2603:10b6:510:3d::12)
 by SA2PR10MB4457.namprd10.prod.outlook.com (2603:10b6:806:115::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.25; Tue, 15 Mar
 2022 04:21:13 +0000
Received: from PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::48e3:d153:6df4:fbed]) by PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::48e3:d153:6df4:fbed%4]) with mapi id 15.20.5061.029; Tue, 15 Mar 2022
 04:21:13 +0000
To: Wenchao Hao <haowenchao@huawei.com>
Cc: Mike Christie <michael.christie@oracle.com>,
        Lee Duncan
 <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        "James E . J .
 Bottomley" <jejb@linux.ibm.com>,
        "Martin K . Petersen"
 <martin.petersen@oracle.com>,
        <open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Wu Bo
 <wubo40@huawei.com>,
        Zhiqiang Liu <liuzhiqiang26@huawei.com>, <linfeilong@huawei.com>
Subject: Re: [PATCH v3 0/3] scsi:iscsi: handle iscsi_cls_conn device with
 sysfs correctly
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1bky7dexf.fsf@ca-mkp.ca.oracle.com>
References: <20220310015759.3296841-1-haowenchao@huawei.com>
Date: Tue, 15 Mar 2022 00:21:11 -0400
In-Reply-To: <20220310015759.3296841-1-haowenchao@huawei.com> (Wenchao Hao's
	message of "Wed, 9 Mar 2022 20:57:56 -0500")
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: BY5PR13CA0010.namprd13.prod.outlook.com
 (2603:10b6:a03:180::23) To PH0PR10MB4759.namprd10.prod.outlook.com
 (2603:10b6:510:3d::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 73533df6-555c-434b-1a92-08da063b3da4
X-MS-TrafficTypeDiagnostic: SA2PR10MB4457:EE_
X-Microsoft-Antispam-PRVS: <SA2PR10MB4457CFEA144FD78978CA99F98E109@SA2PR10MB4457.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VLCeCeHHvnetXn3vo2mUiy2rpAKiO1h4uCNyNdyVc21BebeGKKTV0+FievSU62b+jMbpAHwlt1vUDUyxuo9y7knLAGTKyi0zr/nDoVULklWglCbwW1u/i+qexWbGZA28H7RhFmD/UZHGmrJeZpkbZsFq5oDyYtXUKlNXQvSKA6hx3gzFpTZU8vWDy8eURfsJSoEWMMeSiBtGeAdELAn4xTz8eIQlDogy/FNS9f74ftIeXYLxk3I7Dja4y8LYsPTwzST8Dg166tJDVhLcVeevFaveD1l3qk7zkIilMn+M4Q3uSVWDFXffy7FmR0OplfainhYyn0p9fAlyRPte0lnNuoVIw+da9EwNZ99Pc3nLbJeXrZYj+TIXiBjZ2g2k/CEoAToT3m14tL/Dv0LDwWnEwMvvqRUJjltzDYpa/WHCGirvQqSbL3ohrGD0mEti3cnTfDy+fVC+TOx5yvBdjpgHhe3ArLkjHqW0NOj4uAWJq8jt5jb3fXGSlCrS0dbUoeu2ZSlzYJ7NAsiivrGrtbcqnEChorDaaCst1yC3Jopfc7AhQqSaBGNVBYe9NwOTQjOP4O63jNw5WzQVmskIkKzekE4CnmoCQUbxxCn9k/q21xNW7Bqg7db9fWhSHNg/pgPDX7ZVGg0BzsbM8nigvT21lN1u8WH8uGFk+JBIA2lw/WufipmAdt9+DE9zMOc8bZloFHqebqhsRIqrRr3fjTEBtA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4759.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(316002)(7416002)(66556008)(66946007)(66476007)(8676002)(4326008)(5660300002)(6916009)(54906003)(558084003)(8936002)(186003)(26005)(508600001)(6512007)(86362001)(6486002)(36916002)(38350700002)(52116002)(2906002)(38100700002)(6506007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IAuUl2osm+0ivgabXbF64mu5wWpJTzyq+d4exCIsrAjMmsHC1cWz4B4X+qIK?=
 =?us-ascii?Q?6MoL5Rp5r280lUfkHJtrJZfoJ1Me+/8fKRkPP//pwWu//wi7flNf5zVcalAp?=
 =?us-ascii?Q?SqCJRDWN64DPRI1S0beoMMtqOAWqhhJJqToIW/kQ/WKduftxc8vdKbFUGPRa?=
 =?us-ascii?Q?SCqPFhWvyKMSqiOn48O6HAKtZ8EzUeIlqYx97WhdvvYz/2V2FpRZHN75An/K?=
 =?us-ascii?Q?+eTuDjvhz5sB8nP+dkhj800UM8Yx3lF7da7fcRj3AtHm1eh+Br4cQ3rlJOtq?=
 =?us-ascii?Q?dxEDajp5mJxU8HbTqRyPjz5wRSu+AGpsROasDQn8J8TxdwOXbOC9O/d7YCHP?=
 =?us-ascii?Q?LCQWfU8whOuNZGkt6hENLq0ufJvJ0jzRzQDs9IrthjN0N1/62EZBYinoa7er?=
 =?us-ascii?Q?+Q7xEIfwcj8jOFg2FiDdWRatRBhrf76sGwCzUoEoFKcchgJhNSIo3mij4wjh?=
 =?us-ascii?Q?haDCMMOokMjIZWcWoeiybXxDpyE6ebq6Q5kD9DYW83N2h6skixlePTBYpEyI?=
 =?us-ascii?Q?P+7x8ns/T5DflwVqrc53OEF+wsaY0ZdF0HG3ENDQxJRr/CO4DaaNHRkEs0KY?=
 =?us-ascii?Q?2rhR4AHGn6RRgZR12ywZcHqXqdLGgvEen9AHeEiDX1G6vttdcMrU2Kz88pxO?=
 =?us-ascii?Q?Mz6oKkUIKOY8JMVL3pyQP0Bq9+nd6FF1CqR0y84+rUldCZ3Lw42FulejF3c3?=
 =?us-ascii?Q?sY9YF5dsirE07eEl6zijkNdCxvmg6CobYvU3AnXLl4sIJBYd1U+79+vT4wz4?=
 =?us-ascii?Q?XaOV5INEdagAL++JYu5a2ckLvqGrTs9YeRfbiqRBd2Z0Fzhe36oOO3kTCaia?=
 =?us-ascii?Q?qkcXmKEfJ0pTsrstpEvKJv8HnQHR6Uij6tcLYGbSE0Pxoroc65/NEFk6NjS5?=
 =?us-ascii?Q?g9669TY+/ujH2XSQMgSL22CpIKdVIEyHfJMlZnXgAECIwouyObcJ9P+8gk2H?=
 =?us-ascii?Q?IKXUIiuN4VYuvuM+VW+Xd/NL4mQCtDHmjMGc597WfhwRKxcCNDhn6Z5XpJN2?=
 =?us-ascii?Q?tyYYa2Zktkk5OK7Rn+b0fnoBW5bds5pdJ3vSNND5433wzljVBAUVDNLDsmWw?=
 =?us-ascii?Q?BiNVVwmyQWU4FOlfgQ1Dnj5mW9JYgo02k8ecTBPQBbkHEeNNx54UK9HNt5Fx?=
 =?us-ascii?Q?Zl7v3CyctLv0GEYJeDf9gehdZzwI/U5N6NyXoG5I9PQmaGoJKcmjWO2vy/6C?=
 =?us-ascii?Q?h2GqlIpuueMANxI1wIExMoB9cb8B/IdaeucbXOkdmXXXuY+f3bxQme0rrrOO?=
 =?us-ascii?Q?cPOBTFgh2NJevlUzd2Wpzc2/7NklxDwa8BbrYFubqKJRUQ2pGpADmNI8rpI8?=
 =?us-ascii?Q?M8QeZZDob54iDqN4gDdnkIxNC8IAKXdD4HXHoonfEbxtTC/CWmUCV6wbzSjM?=
 =?us-ascii?Q?/9dPSVc6QF/iweIIHyD4T+UjXbwyf830AQlztHOTRyEigLZRYSQUR8V5mhJ6?=
 =?us-ascii?Q?pjA3ODo+LMTSPwEkQ6kK0N8vWqS5rxJC/NcUcO+SHvUtNTJC8iJCXg=3D=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73533df6-555c-434b-1a92-08da063b3da4
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4759.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2022 04:21:13.4441
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NEExHLrMOXSnMcwS6DgxlUEilyEtc98FGyVNPdrXtgMjjarpSUKfQXa+kvmOFTfpIZSG6cxmfXGGWIdZzwymj/8a0g6P+ClZstcAtU3ZQtk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4457
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10286 signatures=693139
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 spamscore=0
 malwarescore=0 adultscore=0 bulkscore=0 mlxscore=0 mlxlogscore=604
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2203150026
X-Proofpoint-GUID: 9NezOOlrLRAO4y65L6504En3FzBFe6Sj
X-Proofpoint-ORIG-GUID: 9NezOOlrLRAO4y65L6504En3FzBFe6Sj
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b="ZP/06JhH";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b="I59K1/ry";       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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

> We found a NULL pointer dereference in iscsi_sw_tcp_conn_get_param(),
> the root reason is we did sysfs addition wrong.

Applied to 5.18/scsi-staging, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq1bky7dexf.fsf%40ca-mkp.ca.oracle.com.
