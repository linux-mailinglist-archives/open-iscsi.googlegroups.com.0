Return-Path: <open-iscsi+bncBDVIJONZ3YDRBNWJ7ONQMGQEWEMEV6Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-x113a.google.com (mail-yw1-x113a.google.com [IPv6:2607:f8b0:4864:20::113a])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D516370FE
	for <lists+open-iscsi@lfdr.de>; Thu, 24 Nov 2022 04:27:53 +0100 (CET)
Received: by mail-yw1-x113a.google.com with SMTP id 00721157ae682-3b0af5bcbd3sf4758187b3.0
        for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 19:27:53 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1669260472; cv=pass;
        d=google.com; s=arc-20160816;
        b=IerLlDWz1yztbLKzRgfy2QQ8I6pNEdHN+xhY4Ll4TU37YI2CZjLckE3R0YnNObo3K6
         DAdbzoz5hTkwMn5IjbwyAD4MhVEzZ3HAJxWKtYIUbOm31Rh5DxWPUXmA2jDYIQ2m+yWw
         u9fzrjZSInhoHnXNJ9AwAJ1lRg1Hboxd5vroBssBDyWB+bXRN8Pb7cmHN0F+J1NcLiNV
         2UO4iRlI7DJXYoWXqW69tJGeffGScKeH2N1M8cm2kV9R8d9B928XVH+tnuU71hVrA/bL
         din/0f0Dn/6mV36xoL3cxiw8o5oH5YcXDbmm9/9AGAZJl7KIUIaHD5GH5keVQ1nsBgVE
         q5dA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :date:references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=cdO7e8ZK9jIv1aPMGz8JgY1JfWaknxtNig8+5KgYNmc=;
        b=hGAmuxlHmLeuYQFNViJOkbhw831akI/5QWxO/kDHiU0JpgLh6q2IGxOsre3c5Tjgft
         933EOXnWidnj7Z6XNNyGhyMxs7fP2LEHe3xuSiZZfWWDyNZjmPt+l1Iq8s4DRJFokeLQ
         sW+V8FCb7yiqo7kgPJUXJDq4m5g3DDcvQY4PugufsP1h5XjraQJH5w8MKfaosLfGIkSP
         cBfovtKakzuy0/hHSr/1e4gHnjP8M50bOf7zYoZl5TyJJPuDXEHtFeXI7yoqjkoSIv6d
         EZq1nAkddrDaoH20Xe7pJYkmCP1j7pN2tP3Dw+8G9QkrFtMxUU7W/F3OFnzgz8vlPSkM
         oH/w==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b="sOOfQ/zp";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="p/rfJ3B0";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:date:references:message-id:organization:from:subject:cc
         :to:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=cdO7e8ZK9jIv1aPMGz8JgY1JfWaknxtNig8+5KgYNmc=;
        b=incHxfrolXOutij6RU4u5Eas3Nr86tNU2ijrBM2VEuSDVh2J3TAuonWinTlvhuPB/z
         O+WG+yo4c82g1DDYWp9132K61CKylJFWB8fsMgGBwaAnHnNNyMY4nPwEuB2WHH1w1EZX
         MiX5hicmcPPtGwiorG5Szyc8HQYfXSzKadVOcgCSrHiankoiZO7sR5pCjddXIH6irdMC
         7ClucNqGN9HcMbZQZywpKRzS1pp97f/qDvAUxUj9w0kn8OY3NBX3b0MZWNXtanpWsTQs
         MVDV63nCz6PvrM5RlMBI+aI+Fy2j/rLuEe5+m4H4oewU2sb0fzyP2BrlTsvMBHLkh5Hn
         AwvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:date:references:message-id:organization:from:subject:cc
         :to:x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cdO7e8ZK9jIv1aPMGz8JgY1JfWaknxtNig8+5KgYNmc=;
        b=qUd3EGNCBQhLFuxHH7KnJ8qfv6nL5CNNWH7uYxeN1/jOkFBTV/JSUFcRm4pS+m9px6
         PR6PJ5fLkkmOm9NC2iZzhWsKDbYWLjiIXYUfI5mCSomhoWu2rx/R1jpruf5Y57ti1UbB
         3mNBl1taWDxrV7RI5AVBU/T/m9yiGhF0zO/aJCAR/8jfP2XspUB6HhDipYkNAfDSuIUn
         mE8Cq3YVt+0GDytSR3iRy/2vWB573l/h2aYKXvbmorgfZXqk4ofBosBemgpRQroUYzVy
         0QyViEEMEJbBn8k3giihihc9dQifcFj//fQ1B7VcKFDiZGBCVTWg7zwTvZ2nx/7Owi3Q
         U2Sw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pmA023NXgclG8XRfjwwFCbVcb9W4RVkF3P3XFcyi9or43CCJYg/
	yxo7bR6KQ42ryPiGMR0sIZ0=
X-Google-Smtp-Source: AA0mqf4yZkie7qqVg1cEE60xSr464G4rn++0zYEbC1O9Mdjcc7RUTuDIt6G1UmdW8hwVYqCkLvShyg==
X-Received: by 2002:a05:690c:b04:b0:358:e475:e285 with SMTP id cj4-20020a05690c0b0400b00358e475e285mr29247241ywb.313.1669260472386;
        Wed, 23 Nov 2022 19:27:52 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:ac8e:0:b0:6f1:cfad:b7bb with SMTP id x14-20020a25ac8e000000b006f1cfadb7bbls18490ybi.7.-pod-prod-gmail;
 Wed, 23 Nov 2022 19:27:50 -0800 (PST)
X-Received: by 2002:a25:ca44:0:b0:6f1:94ee:f120 with SMTP id a65-20020a25ca44000000b006f194eef120mr618943ybg.400.1669260470471;
        Wed, 23 Nov 2022 19:27:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669260470; cv=pass;
        d=google.com; s=arc-20160816;
        b=U9TExgfhBYU+Ik7n2QI7ChJ8Mu+4KdFjWkRk/WYsYaSLdb/BFw0bH4G8jf243AttcK
         by94TvYEPOPFXmOHSD5IEmAnPlUBSoGPHtR6AuBeA4KGZdasAUjjprn8hgJ9anw2eJW7
         GadbP9pwLVbejJp/BpDkgincX9EMZklK01rCTZXfesCH0XECX00X1BpDWFN+VnrgkIC5
         Vj2Ek+5CVd2LZLvplYkQlhbPFCPz7HGpLD7Vy8CEWYYJ8IVEPQLiZPHWjuxOEDo3XYv7
         nEDnGje9aNHdQv5B5jswmhVWgu/S6Uo6YnE4t1mcw4tL1yJqfP0vSg3YJxZW37pV5r+X
         YsQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature:dkim-signature;
        bh=Z1BdZ7X7hAt/rW0J4UDpLrJTXkhEOYZad21hXJI6TUY=;
        b=dJnNyISNUPPIN4dLi487yweDs/uk8VJ94Y2HB1C5VmFHzEQMf8TRfMVySBP77ckIWU
         2/beZ1xTOAFOgGTpF8kWYF0lAPlFnG9WGS0qLE+fhwix+uogn/2H64DxCHNPekqJDYri
         U17z2awBrtotKbh2MU2Twp0XJWwVNtfYT5tZzqw7Vwl1VNu1KWG/kwu5R+HcplB0g14J
         gZ1Q18TNhSwfC8iXZfADkpuT8yNSGgHEazldOOmpodukWzzyjJL0DYdp62YuSWm9YRyv
         uW+M+SZqAhzivIYlTJhG4C5e5TdW3F11yO706x0ZRWD5JoUUdNKKZQpMNuj0WVdcysaa
         KMwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b="sOOfQ/zp";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="p/rfJ3B0";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id bf16-20020a05690c029000b0038a0b6787ebsi1186981ywb.2.2022.11.23.19.27.50
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Nov 2022 19:27:50 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2AO2iKDo028162;
	Thu, 24 Nov 2022 03:27:50 GMT
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3m1p5fhgu9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 24 Nov 2022 03:27:50 +0000
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 2AO0I1UF010837;
	Thu, 24 Nov 2022 03:27:49 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2170.outbound.protection.outlook.com [104.47.56.170])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3kxnkdxxc5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 24 Nov 2022 03:27:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KZsD9Xvqy4PwID7Q7nHsE66yLNj7ajn0kE2mmQCTtJe3qqR52IQJVayPWXaS4nTsCTjLfkDXS7pt/6tVdtkLSUcUYQhFELiiBiO1ASicKzpzYND5ZI2DUAh5J4jytFnicOrW9Hj2yoz+EtpNyPbGH5IeabittBwGsHL+LBt78T7UeDDjIGWSDMYzCHprAu17Mo9PwzoB0bMa2EqOMvKcrElf/iUIgBe0Xl+RudZiT31JK/FeLPROvJ0awke9Wow7L6rhauQZaBvXYhvhK4ACEFO8+eue4Pu2uL0jUVF3nqBOdMquSBos63Lh9pDUWJjJ++WWbkSn1KS2P+4vKRIEsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z1BdZ7X7hAt/rW0J4UDpLrJTXkhEOYZad21hXJI6TUY=;
 b=e3jM9l2nVcMc0J78hlTAJbsp9d/Jw7t7vtt2bbIlkwi5V4n53p1y84SOnHSjrJwGjTFXj/2LRBEaHwQsRV8ZiWWHQXP9MozSC3UHj47HfF3/DMUJTu8YDdchfffVTWE/ZQc4TT8l7J2Qim2AD78qNO7uCPAROyFHdeA6TeTzc/KR1vuRnltdubgKN21nER8C5fGIyl3pVbTkENmw5RovtjrMr/YGBcwnXnMSBDmerK1Kno+YSTTsRoxZ3pf/IMv2Pm3xRsI32UOPEEHYjGpgafqK0Se+thvcINb48PaIgftNo7UM0CynzeVN3MlBFP2y4NOtjbI6bTR7aTyLgqSfyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from PH0PR10MB4759.namprd10.prod.outlook.com (2603:10b6:510:3d::12)
 by PH7PR10MB6553.namprd10.prod.outlook.com (2603:10b6:510:204::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.18; Thu, 24 Nov
 2022 03:27:47 +0000
Received: from PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::b32e:78d8:ef63:470a]) by PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::b32e:78d8:ef63:470a%8]) with mapi id 15.20.5857.019; Thu, 24 Nov 2022
 03:27:47 +0000
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
Subject: Re: [PATCH] scsi:iscsi: rename iscsi_set_param to iscsi_if_set_param
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1bkoxt4k5.fsf@ca-mkp.ca.oracle.com>
References: <20221122181105.4123935-1-haowenchao@huawei.com>
Date: Wed, 23 Nov 2022 22:27:45 -0500
In-Reply-To: <20221122181105.4123935-1-haowenchao@huawei.com> (Wenchao Hao's
	message of "Tue, 22 Nov 2022 18:11:05 +0000")
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: SN6PR05CA0030.namprd05.prod.outlook.com
 (2603:10b6:805:de::43) To PH0PR10MB4759.namprd10.prod.outlook.com
 (2603:10b6:510:3d::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB4759:EE_|PH7PR10MB6553:EE_
X-MS-Office365-Filtering-Correlation-Id: 62b42cf2-a0fe-44b0-33bc-08dacdcbdb73
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2Dac/yHYfRdktVb9OZLG7lJ32YT4Zben/t1zxu1+IQCxyDz2zxqugPNQ4Ayx/OEKrDSekdv8JXgcbo7/PRT6uAULfvNw6Qh/qPu2XHQe5BfUQWkpKzxQ7xr1FBbC3NdkLI5HDSBVT6cqsrWGHWuBkjE+WPPXtUFlDJHIxycTcSPQH9+RhOiYAhvnQNge+AltAtZ2/TL0mcJ3ANw9db4FFmVi4/RGOoJaCNqDxzq/a8fcAnVRrJUzL+hJI+9rjt4vPpNnNI4yFHCbcAJI4Vhw2bS1sneoNgvyme5vb+fzByiss4iZ5dyDl4rLl2kcrzrlMjJ3ORHIyCq2kny1LAifl9K8yQMdVZU813ejVSoP0ONRzPO1+yOA9ZRyzRaa5/2ys4MELNzRKAHAsrARj0Lmb6YbIrhukPfunndfVdzuzmRtv6A8kUVdc6fiTP+cfcRfAQIVzBPGGxAkqi2QKXB1MG6Pnm6k3Co1fMGChPqcLbkWQ8xgDAoOInxOwwPZg3ZUjl4CS45/x39jd+fyQYLI2DnIqM1n7aARWHYkqrjKajF8q3p+/LZlv9C1H45vGFaulXUC8UXSAXFJyHqJ2D/rQqSlRgz3Q7V2ZT5ncJVYTTZSQV3cufqRnFwLo1bruOe5wbAEze0UUTRkoP8b/db72A==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4759.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(136003)(39860400002)(366004)(376002)(396003)(346002)(451199015)(66946007)(8676002)(66476007)(5660300002)(186003)(66556008)(478600001)(4326008)(6486002)(38100700002)(41300700001)(86362001)(558084003)(316002)(6916009)(8936002)(54906003)(2906002)(26005)(6512007)(6506007)(36916002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1hoEysorudcAJ/3IFkeKg6IJE5XSGP0Ow2QreFdp9Tr74D7pwX4nJz1N8nf6?=
 =?us-ascii?Q?/rdId8nTMgGOzsTSxKaQ60sciRn/A67Uo1b2pGjDzgrZfaEHI4wZyp2QI+UY?=
 =?us-ascii?Q?QrfnkFldwZgh9ltEc1BZxKkMpJvlCMnKxNmVR2/T9tbOG0giWiVGOHORlmUS?=
 =?us-ascii?Q?NHZ5IwVDiHYEhNqtGnIuTMF/JafgxLH88sc7OOhFFWijTZJMdjRJA5ioKcTh?=
 =?us-ascii?Q?9cdF3SLAE2fXRlv0PMqdLpxaix2r0k9RZsgxxAtdmuKwQz4DBNYbckISAZXO?=
 =?us-ascii?Q?MczKXSbKb14mSSVkxuBS2+Fb//RRfY2KylsBt1KdThpxCmnKnXE/j0k+VHt+?=
 =?us-ascii?Q?os66X2/9kSDv8pRNrvijPQRT9PKBT2K+j5ZQa+JrFgE9ZPMBrgH/jlumLLb1?=
 =?us-ascii?Q?V2HCwUgYTS1b7GwfuHdiforYu0fH5AJaje2zmiVgUccR5Xti4bZuAyUSvFQO?=
 =?us-ascii?Q?S5tTVSSAPe+KehZ9NCsGCfYdQYPyOLJKqowULNXiix3OE3gu22a0neJN2uZc?=
 =?us-ascii?Q?wdNHPBOb/ura2Ui552ns3dJWO7BmLAGgOGxXfk2Y75gijQAKV9kjchTP9CET?=
 =?us-ascii?Q?9Vhj0hTnnIoXD2xFEp9AyEr33M8+JVHUC1TClW4wmcLE9I8WFoHkgNo1bnq7?=
 =?us-ascii?Q?XXYubHwt/r1ox7yBUb9r7fWL54O6gcQMxIQtz8FKumtl3/2e+gaBDkfvgz0B?=
 =?us-ascii?Q?8XKP0VDJirhcTh/ExG7Qb+1bTiML5NJqdgim54p7xVMmoyA0pzLkBdFsXDSG?=
 =?us-ascii?Q?yHGoF5mdo58U1ntGpH1zXn6xYzqwISN5rCT2FJbSTeAj9CszqB9G6nJbg1KD?=
 =?us-ascii?Q?qmcfGKupKq3vuGig+d2hWPF30JIObr/1aP76cH34eJ2paarzSXJ72hQwq3D7?=
 =?us-ascii?Q?5N6jDrWohdi6LqRLkIMApU1/MMPN5gzsiyZ4kZVYcr2syTTW60RAeSv1Ndzf?=
 =?us-ascii?Q?ufY3gIdBlQP8BVjZgBFJhgs0aVchthoPgizsCU5BzYsh/FWOX5nKjgx6vmv6?=
 =?us-ascii?Q?9nloX+NenwFz4WVg9ntslW1ttJ7Pgc0FEL/VL9eOV9nB1G3zrgGzPpkfIeR7?=
 =?us-ascii?Q?C0tVjxFE52+1dVO6rWI6IJyMhhcfMrX0X4KsT/jIf4dWCn0Wf41ggaCBjTIj?=
 =?us-ascii?Q?eQKf812VHAF9TIw+UyPNGgmOKvG6/TvctNedBS6yIrAS992yxZMsOm6d5cyP?=
 =?us-ascii?Q?/bEPVhtHpcCsT1uQyFakLp8ycNxNyAJHRYVUfw39R9KJTwpGGfpYm0NtRQZw?=
 =?us-ascii?Q?09Pj+rUF9Sj7dyfsh5XFy3oCilUHsFI65teWH4t3Q3LkIc/VX5cNWy1OWKbn?=
 =?us-ascii?Q?59c+2hQypJVAxZB7F9XuH1JQoyGMUj/WRTa5qk3cUhSAe5nW/yVJFQGhw9J5?=
 =?us-ascii?Q?sOHHal+YbTOnOj5xWtyIm7iIKxu2c+ITTpM3xFcKP26rjVUiQ3xlV9Wkim8f?=
 =?us-ascii?Q?B1H6BkrI4S55VJqDhmtIKzXLj3U/+a6lHfuNorqBIfKL2ZUe32R7MmiR+sPC?=
 =?us-ascii?Q?V6yBdsIE6ZNZ7YQJVrpqBi3z9jhTqi9xFQbXllIxAwNX9PxCWzWRNqK2r2IP?=
 =?us-ascii?Q?i07k1xQj8YA39Bco9VSxPGBLPk+WAp8Ov1T6Qd8tlYJOQ9ywz4zL4Mp2mZhv?=
 =?us-ascii?Q?5w=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?us-ascii?Q?nF6X1eTwXKElpSNMXdJhiE/bshg4p2Z8YMLgjnvDih0pL52nIwKYmJ39HnRw?=
 =?us-ascii?Q?yL4ovicZM6m74xbhqBL+9E/0hHfj2/h7YM9nhTen7PthWfiEjEdS3gnWuQ1u?=
 =?us-ascii?Q?ugouY4UgiwKmK1Ggm6mvUMyEuLgwOQXqG393uSAHR1PR2SsULp3lLtkhiGgO?=
 =?us-ascii?Q?5OdkWFHEX4pn8vwENrA/I3a7DOtzFfKtMhTT7dDEtirAbdrLHQIzCmWnrIpj?=
 =?us-ascii?Q?o/4vcOFVOjHlRYmYF//06/qMlyO8dvdWeqyaePa9XSPDLmwKjQjLLLq+5VKy?=
 =?us-ascii?Q?foUjpNTOrTuhjAdf/wjX1vMIyea23nV3gmoFpWC+gddQ2R90dzzVtClg6hkw?=
 =?us-ascii?Q?c8CHB4LIS3c2d8OQF1of8ZJ+JgfzTgNE5qkt9yXfC+CDkrcrEb5DOrUOoB/e?=
 =?us-ascii?Q?OKR3DrpimvblXEzLjQRzKViKDLoe65ZKsmxspeickpTiqxACcPQMDVe7dS9/?=
 =?us-ascii?Q?B9pyCbWnoR/S+s6r2sE62rN3lamYKCv7LM4Luo3uyX/CBRXqRYxTxU4v5cxy?=
 =?us-ascii?Q?NNcQQj/rIa62TZq3HTx5oVRHurtt+rDgBpHZXp2KNbW6/qSWMSRfwf/Yf0ow?=
 =?us-ascii?Q?F6XNitRrPoaFK9E5R1PSDOwozc+qcR7XVXD0KEfe2tTv5dsMY2qUxCMc3eQp?=
 =?us-ascii?Q?uLL99E14rRE7Oj0PacG6uFrtawvHFiewtnwW33FFU7+tibN+O2fERxTuMQL1?=
 =?us-ascii?Q?M83aUpjfcKjF/pq2Gz7bcW5iLv7FcmRUCPmjPDOHDd+WF0DBG4ec7j5i3o7l?=
 =?us-ascii?Q?itW/KPmkuqKnDYA7cBOYjwijuJ0dDG4WfdzMdB9/c4CPgLbU96Sfj+gwTeJJ?=
 =?us-ascii?Q?qlWzg2od0KjM3ogxVLfvEFOzVSwgA2+Y3EbuUo3Tb2wOTMpIoNE6vSBOGniz?=
 =?us-ascii?Q?SynxqL630GcQSBh2LIIKiJNm7fjhnqTEo4I1K3ayYsLzZnWGBDhzWEaWubJM?=
 =?us-ascii?Q?H/r15UE608Z2rGyCb8QyiLmF5SijdhyCpS66CbFGQlnSJ+g3AW4tNs4VrjVW?=
 =?us-ascii?Q?MY5KVSk5nlB5iHIlsg4P7Xre+Q=3D=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62b42cf2-a0fe-44b0-33bc-08dacdcbdb73
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4759.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2022 03:27:47.2973
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CP/ocI5krsJdzLMiqGBCL+u9OUKMFyECIlc00TJHb/T2w+1jItroUeLb8fabh82FpUGoAVZB6QchIz0As4cqc5oYEAGlllVEu7YA58G2nfA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB6553
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-24_02,2022-11-23_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 bulkscore=0 phishscore=0
 adultscore=0 suspectscore=0 mlxscore=0 mlxlogscore=901 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2210170000
 definitions=main-2211240025
X-Proofpoint-ORIG-GUID: dBnXe2n1SilzqkojtScbfGKoFWNNCxPi
X-Proofpoint-GUID: dBnXe2n1SilzqkojtScbfGKoFWNNCxPi
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2022-7-12 header.b="sOOfQ/zp";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b="p/rfJ3B0";       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

> There are two iscsi_set_param() functions individually defined in
> libiscsi.c and scsi_transport_iscsi.c which is confused.

Applied to 6.2/scsi-staging, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq1bkoxt4k5.fsf%40ca-mkp.ca.oracle.com.
