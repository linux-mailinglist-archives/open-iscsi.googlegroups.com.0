Return-Path: <open-iscsi+bncBDVIJONZ3YDRB7FCXK7QMGQEEZBXT7Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A22A7A43D
	for <lists+open-iscsi@lfdr.de>; Thu,  3 Apr 2025 15:47:45 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id d2e1a72fcca58-7394792f83csf771513b3a.3
        for <lists+open-iscsi@lfdr.de>; Thu, 03 Apr 2025 06:47:45 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1743688064; cv=pass;
        d=google.com; s=arc-20240605;
        b=OzbakencBWw/rr8p/L7L1p353kFDRJhewD4vdd0+q9IqNcbTgWFeUZ8yMbIhWDkkab
         oXFgu8waIJtylTSQwX5JLnjljucBhE7Owrf6YDAWzFMDqZm9vQW1KE+ebA+HuPaglWKL
         j8ID3IvAXL6FNlv2PH4Z2hCxoUz6+kefkRDm49ZecDXtG3l/8bu7pwaXaQbJoWyHcpD5
         LaUCaQFBKQ2gcJ+hysZzkte4w6cZBQePBBz8y4uno5TV2FzAMZP0I5NgjZ11GMuz1rcg
         oqyqIgXwmrzEH1eLn3g+yAwhGhTzBy3aRrFb5yDR3OiWsYGyNpQ4mhzpA2aIykbzdkOE
         rtjA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:date:references
         :message-id:organization:in-reply-to:from:subject:cc:to
         :dkim-signature;
        bh=JqzpXKuqchORP6qaZraqRp4oxuB9fp1d072142n2X4s=;
        fh=YekHNyObRIN9Rks6185EToYi5obhWFoFSqN4c6rHInU=;
        b=jXzFBMiyIIo6x97sPAOG2Cz6Mcswi4ulBvhEfNiFYO8Uu2g4UO0zjtC0iWv8Z3XmHS
         d/fakhk4CuG/nDxJTUSHToGI5YtA6Jgzg78ROc99W639AvVaQI4SJI/sHabFPNYJw22L
         zDxL2tamZSwlRVavXkf/B4vinbCEQbSwfqOqS3OM+6aGUJDLBVSp43kuiK66l+NMsajd
         WKA4s7kWY2jqFTkwkG1f0ihQg7NCd2bdrexl+JXZytFlQgNPq1/qaBW57jkf7VjfL2TZ
         1sR2P3iQD9BOb0yW/UzG1Jrw+SsYSZsL2ZRP8Iy+/GaFWP73qAmIVashCcY4Ca3syBe3
         F/nw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=oG2auB2a;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="SGNEK/xJ";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1743688064; x=1744292864; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:date:references:message-id
         :organization:in-reply-to:from:subject:cc:to:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JqzpXKuqchORP6qaZraqRp4oxuB9fp1d072142n2X4s=;
        b=jxku3S+6LijsehuxzNx3HwafWmpo4ervv2sBseUsyh3A2GzsB41HSSfQSqrguA94D2
         4FY/8aeQWhQUhkx//beons3YiSuC2lOoIv6m9FkZZAoc378whE0k65GLwrNVWc89/YjP
         eAgWBkJi7VxFbE57HSEgYnlaE/z4/aXzfWFRa6V2jSIyThmG7lV2O6f2ayU6FgcLssxA
         UhHHx4oe8n4b26adGKVEGLgXU6Io0giAiM7VWykOVx+FaQ8un/6f7qvPOQ9jNyVajNz0
         CxraT5KqhGg8nIlRvBpipIAp/7l/W8ea3k03uf/06YO84ljCu+sEmy88mKRXvMCcaFln
         /FNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743688064; x=1744292864;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :date:references:message-id:organization:in-reply-to:from:subject:cc
         :to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JqzpXKuqchORP6qaZraqRp4oxuB9fp1d072142n2X4s=;
        b=j9RX7kgiGLKtXD5F+MDWIm+vq1jBo9sZtmX2WlsDyxXcUEBk4jxPYpTYDBaI6UwNro
         t6Om/EU8SPy7eQfIe1dR6r+s3MI2/RP80HCg2JliQBn8Q8ZoO4W3ZhczaQ4G9YaeH/eo
         mA8xecLi/0tAQlPrrcItvM3uR1FABHFKw8WQgu5DU071mAwXcwazWro9FRcAXEDI21nF
         GDY+dp5p0aAolv3dc7NsJ2mjKCens7KZjjEqxk1sdGdofr64hVd2VqrstIYAJg06nPqL
         WN4hFS3AAIKsot1JscWIY2Fc4hkMOQ6/3WraNomdHmotW3JIpcae8DYgc5UDJC+Xc9+Z
         sCWA==
X-Forwarded-Encrypted: i=3; AJvYcCVFtIr/h6fBjry+zJ4P6WIkwW0Hh+ZTcwP5HD0TL6Ilx8paPAwGe4X1kmAvvM2Ka94XR19Tiw==@lfdr.de
X-Gm-Message-State: AOJu0YwKLqgAzxUNWGHPATH/mvKIDFgrV/R70nnJBRWb1gic+vuTJ6iM
	aDR/4h7IWftl0N9laIDPdVKJ8+WJ9M6MRMiQVBakCOr3nyp7lQNg
X-Google-Smtp-Source: AGHT+IGqWQEhtu9x5niIbFNtwBJnChVolbRir4Vcje548cJCD7t3sKiqBujiPndhQKizYgGTQkeSPA==
X-Received: by 2002:a05:6a00:2410:b0:739:4a30:b900 with SMTP id d2e1a72fcca58-739c787248dmr8165230b3a.7.1743688063963;
        Thu, 03 Apr 2025 06:47:43 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com; h=ARLLPALlfXKsKuKJdW9gDFyTVD8paJ6xJcgByXMOYG6EuZ/tsg==
Received: by 2002:a05:6a00:ac3:b0:730:8911:b1e7 with SMTP id
 d2e1a72fcca58-739d5cff1bdls821464b3a.2.-pod-prod-02-us; Thu, 03 Apr 2025
 06:47:39 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCULp00otRfE3G3GA7c9z//XwjFoiRtm8c2Nl7Jc2KBtyXI3MeSNXUjXZG13bhM8iTml73/XsS4qJejc@googlegroups.com
X-Received: by 2002:a05:6a00:2410:b0:739:4a30:b900 with SMTP id d2e1a72fcca58-739c787248dmr8164809b3a.7.1743688058999;
        Thu, 03 Apr 2025 06:47:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1743688058; cv=pass;
        d=google.com; s=arc-20240605;
        b=ByvpiLLxK/Submt29hMhv6g/rV6cHdu932AdOPWxToPNal/gkJkOXyzMJ046FMMdEC
         oacPN+rWW4pYT3rVSuL/+btwNKNR3E5ugKV2+c/CmIhwkdoKWB0XDGUlQS4N97JZzrRb
         q6mIHot1vqc3xi3HoE8q2E2F2rThkcAq7zDRXrNV+u78qfI6krzD0/jqW0c5iol/sOdp
         4e9lHROXpCQkwrLBVGoRQBXGgtBdijaEQDgjdYu5UhniZNy0dYS10l4U99MItyC8dKD/
         yV7EjVtrQ4vLVNVwMnH4i0lS07u1/Op2DAhBzv6wsXr8+zMdypzlbQ86KAgFiIMCvSp3
         9uIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:date:references:message-id:organization:in-reply-to
         :from:subject:cc:to:dkim-signature:dkim-signature;
        bh=qcljlpZV9wR3oHxW/mvTc93XYWyFCCJeo2E6+auxVCM=;
        fh=fQKsmAHTtT7zFtTyDP9QaUnVCnNGnFC4t5tUGn/u5NA=;
        b=K6pQ2wcHMD9H84AEzkNmTl8Cu5iLyRSw7tieH4Q5nodauOCt5zC5/zwbQVFRFFqvLb
         dE8VyxfO+pMwg4KM5JkTbTufE8sLqTYE4EWA1jnMjhK4Lrkg/axxncDvsY+qMfP0qIFA
         q5LaXeJlgT7d8nEMXPy9fFWMyUHLdmIk9cIPwoInUnMqsQZ/7cBmuH5rVU/BoRsvNNnj
         RQn3mJDJ27E+opD3vbxmutxRFG1YOwvFUSWiI3dhIMJll+nVOfHH8p7ShHk18R3DDvzo
         m/2nTadSrsoj/qJOyAX8Dj1On22g5e13pcE34CbAFX2JGAXJLxIDInaGE1gJm3Q8v78s
         ZoOA==;
        dara=google.com
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=oG2auB2a;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="SGNEK/xJ";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id d2e1a72fcca58-739da0f0e15si61362b3a.6.2025.04.03.06.47.38
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Apr 2025 06:47:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 533BHfNi032062;
	Thu, 3 Apr 2025 13:47:37 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 45p7f0mr8r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 03 Apr 2025 13:47:36 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 533CR2ka032863;
	Thu, 3 Apr 2025 13:47:36 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2049.outbound.protection.outlook.com [104.47.66.49])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 45p7acaujs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 03 Apr 2025 13:47:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uk1EofkSvbuFZrpizkC65vngFk9nPojrsEcwzGUHqu2KUzZBzZ37o33ozCV3Q5xSo8ldZkJRmo/fgZQ0WdEiCnkKAv+HLtxo58/vH9xYTyKImG468zr71qxBffnQtWVdblDVNOp+jdThJj6uLT6FcyU/QIfhmpXbXUqNSPUpFnnoYov8bxn6LyxpK247jtLf89y5arzkDEPuGioONTdpsci4LNp+Dn3HdFRF8aiSsemZFYDKmy/3ocdjUom80HqdFYIa08jJ7c1xT3UB/+o5LY+KflZbPfVI11wOVrEar2JAdXVGAktGE2947DXnZYB26trpfSky0xFAPBuI4MVD5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qcljlpZV9wR3oHxW/mvTc93XYWyFCCJeo2E6+auxVCM=;
 b=ABCBHzwgmAriLDEj8X0Pji0T0jqvero9MCodRWMwx4A2p2RhI9PiMb1KHa21Piqo+KMwFndsJL5qU+R8Hl0W0voxYoI2C/y/ooIZwOVOEw4tNmtgpf4OIoSAJE7CkrfltXuuC2swhXnS2sh9qQ+y3BSE9UYdMmDqyBPv8lbkhmWTADD1NiVdgPduNpSkAbm2hBazogn+OwLHuki3nivPo3iUOEtiek43JB4f2snkYgriheHasmNaKnIWS18uhmcoOGJDorDzY3xgVdBLWPk9Q+o2qETeVP3hf4lelqsKycpQp+AXK4+cd83Fv79n0qQJqmNB18nELk7/YBwARJSYqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CH0PR10MB5338.namprd10.prod.outlook.com (2603:10b6:610:cb::8)
 by DS7PR10MB7252.namprd10.prod.outlook.com (2603:10b6:8:ee::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8583.42; Thu, 3 Apr
 2025 13:47:33 +0000
Received: from CH0PR10MB5338.namprd10.prod.outlook.com
 ([fe80::5cca:2bcc:cedb:d9bf]) by CH0PR10MB5338.namprd10.prod.outlook.com
 ([fe80::5cca:2bcc:cedb:d9bf%4]) with mapi id 15.20.8583.043; Thu, 3 Apr 2025
 13:47:33 +0000
To: linmq006@gmail.com
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        Mike
 Christie <michael.christie@oracle.com>,
        "James E.J. Bottomley"
 <James.Bottomley@HansenPartnership.com>,
        "Martin K. Petersen"
 <martin.petersen@oracle.com>,
        Lin Ma <linma@zju.edu.cn>, open-iscsi@googlegroups.com,
        linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] scsi: iscsi: Fix missing scsi_host_put in error path
From: "'Martin K. Petersen' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <20250318094344.91776-1-linmq006@gmail.com> (linmq's message of
	"Tue, 18 Mar 2025 17:43:43 +0800")
Organization: Oracle Corporation
Message-ID: <yq134epwe53.fsf@ca-mkp.ca.oracle.com>
References: <20250318094344.91776-1-linmq006@gmail.com>
Date: Thu, 03 Apr 2025 09:47:30 -0400
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: SJ0PR03CA0007.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::12) To CH0PR10MB5338.namprd10.prod.outlook.com
 (2603:10b6:610:cb::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR10MB5338:EE_|DS7PR10MB7252:EE_
X-MS-Office365-Filtering-Correlation-Id: 48d0dd41-8d11-42c4-96ba-08dd72b61582
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6FIY34+XNN6eL97/n6PQGrmx37gH+eozuWsv+AY5tz0ZjH+NdRwxhewhybrR?=
 =?us-ascii?Q?OLvCM///1jC1BcuF7tdr+Gc79MN5mgOEEefH7yLxaGeteY5q/G30Q1Vszr4P?=
 =?us-ascii?Q?MvDEOzjsWLT8JhR5tEiceEJrCWQNgattSFZ/cGrsUDUwCYduuv3S04mBSJwM?=
 =?us-ascii?Q?9UaTC71OvRKAeXzzw++Rb/xe4fHY+4Y/kWC4Dj1/EF3u+6Bb4cBrjMgp29EM?=
 =?us-ascii?Q?A9fxmZxDuSpkFaof9chGiKSUHFPcjAIKtdAJfb8BZdk98A2ZgqDxUza5NKbU?=
 =?us-ascii?Q?SK3tAFvCAGS2Y5clVK82Hh9tfC3oySCP/NoZOnNFjzlaJzkcX35dkv9qrIVs?=
 =?us-ascii?Q?fmyzfD9Yoj00O52U4leiDidIgh6Es72zldHGmuS3H3Htkqr6fEiS5XpUCIwB?=
 =?us-ascii?Q?SBlDOJ+xl4bG/xlskOOqbrBYWrwsWD5Lqk/bQhO+ujCKuorOov9V9ljn8Leh?=
 =?us-ascii?Q?y/xTV6ocqQfTUKwSX5D5XuV+/+iyaLCDQ4Nut8YFIZ4tquMe1ZY1KCfl/P9Y?=
 =?us-ascii?Q?OvFeReneRNAWX00HA9pR6kjgqVaqwOgQV6sSh+JvPNKryAH+knb6WvYn58so?=
 =?us-ascii?Q?hK1mOF24LmBW7J56HeOpIDy1Jqy4EGeFHwMZkEYlPD3l5vO2g57NzkuHYhrF?=
 =?us-ascii?Q?4D0fnCAKZlQUk0p4mg02F5aW7CWEFSZ9iqNhjzU5EGpsjZNzk+6M1TemNXC4?=
 =?us-ascii?Q?o/myEM8KBMaAEt5zxjx05f6dInBLX/U99KtLqWgN00vi0MlrKokDBrPIolS/?=
 =?us-ascii?Q?+IEqST2E8+DwW6DzbrybIpHaL3vGCgtTI+QsRfxc18HALa0rC6hHvbO2DnaI?=
 =?us-ascii?Q?lV+PWUKxsEzvUtoS1mLlMAbgV58qJeFyC8z0sD172QDW/bToMddK4o+C7rB7?=
 =?us-ascii?Q?59zK4DTDVybl/GsjWcCK2/4a42v2Jahvq2Hnb+t3JYv3E4LAzD044m/szAwt?=
 =?us-ascii?Q?aveW3Js6h75eknsqux+MxcwDWMra/KyE2sx11v0Q1lwHwSZ3/S1byIfSRJUP?=
 =?us-ascii?Q?eavbUIxjp/PVWxTZLL111K38rbpKCKXP+qHNymnBye6rz4Q8x/Jmm1HKZAtZ?=
 =?us-ascii?Q?tLRNXz+Girnxe3wq8QtXfbf1eKK+wYZjzLB+3hybtpbGu9MCiePXhaOOmXYJ?=
 =?us-ascii?Q?z/FBZkixfgW36Y6C6IE9xiq9O6eZkUEUYz7eu8axnIeE/xDhIkaChyvvE4OJ?=
 =?us-ascii?Q?RBAXkmnvJ3xwA/8/5GgxILtwuRCHzTRa83nMtWlohLxuYJnPqHqBT1Nu5yE+?=
 =?us-ascii?Q?nGctejPUAtBqAak4rXk2sR/jQWJSJUUy5nkTLqe1AK7qh+lQwIavutjeFQal?=
 =?us-ascii?Q?EKojhza2t6QRVyHsnCO/DAAeiRPPYe7NHD+9eD/rTeEyRDe8a+2x6iKXGmPF?=
 =?us-ascii?Q?UU395BvUnZk7vndf47xhFE2yxzd2?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR10MB5338.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CX0/TuLdObNfQyixH4dr6aAXCeSWu/FfISAXmRNTvNE0E3lQnXuMuSx33pYp?=
 =?us-ascii?Q?+HPqzsXZZqNSM4p4/2y2ZZyksOspOE4JdiXxaieOhQm3dMO1xmwfiToKXlOU?=
 =?us-ascii?Q?7CwYR9R95D8pOC9KhZQ1D9UKRG4aEOURio95C6qzeE8L8VNW8a0O9mQ3yxbb?=
 =?us-ascii?Q?XxQdd3Wm8ToEVWvPvB6nl+ceSqTuTaNRr7jbDvLY0JwvPo88fnYvUo7FmCtZ?=
 =?us-ascii?Q?UZc/o6WzlKp8PI3YgwXeq5suUxQdpIiR+uDGw5gT/5u5QMMLrEODh4nDtyyw?=
 =?us-ascii?Q?9+FLlEPEnQi9qXmsdS7W6V0uHYual7OvX9o5A4hF1npI4z6g9gczhgg/5KiF?=
 =?us-ascii?Q?pq+5wlJYiayv4FN7qneUz/Dd13786q0z2odbtYY3m3vHOoGJH2HopVpYZu+y?=
 =?us-ascii?Q?MY9PXfykpW1vKnBUV5ZeOvTD34lbckFkS/MkDBxkb1bGNVKYHTp0RpRnQ0Ve?=
 =?us-ascii?Q?TQwUd9m53zPzysH6DODO7waAuVQj7G7gpMuZLBEzvzh/azvMr+B5njAsxHhZ?=
 =?us-ascii?Q?9XR9+kbr0x4PG3Ni8UfoPo/oA7LQ2owMgvXM9xkLIm8+VYr1ZXTA+M7d5+h6?=
 =?us-ascii?Q?uPW7b4GEC3FGirbsHVjZMPzQ7yIybEuZkzpdTyQs8LULsqWNhuTP0yALlhzE?=
 =?us-ascii?Q?AAdKkb87vXuLapv+sT5J7YsjQ57F0c0/I+KKkaVlh1fn4qUbsKTw7c4gy7dr?=
 =?us-ascii?Q?gPBKKcpc/W/fVwCGtN9mAF0S1nBGJA6oRq2njtLDftNV/v0O+AMkjKYwGz+2?=
 =?us-ascii?Q?YjzuN/RTQIkyt+7Ado/3jkM5Kn/w1Kra7k7pCvZM5yQA+0eNdULh0kFiQvlk?=
 =?us-ascii?Q?Ec4mYIV7PMhb2VcccQOwWsao1n3aECVNLiB+9QXpx2ERuF+66G3jAQEWNb4C?=
 =?us-ascii?Q?ZqDHvBurbBlY6lHEn1YlTo4Gyf3v4nz+heNOGYX0yUJfwmB6EgxV5R1PkOXP?=
 =?us-ascii?Q?CVVYRjOKFz8vkyt6hAyQlF1cQqpBJzKhARlHoaCJQc3M4KflMBi2s2JCn7x7?=
 =?us-ascii?Q?qSM1RkWf/FzV3V9sr+T4yEa+RA5L97f3eGayAq2i+DX2LS5JNBkWh1zo4aCT?=
 =?us-ascii?Q?6JroHzdJiN79JmBVaw9EqwYvo9as+jB4DFMkcF5YRtGE2dwPu830xI3z42IZ?=
 =?us-ascii?Q?kbVXmzNcDX24eLC5o8/JWf2z05R9JSICFr9Q5GNCa/qUD2ww830t5o8Yc/Zq?=
 =?us-ascii?Q?GTjfvx3jtZt/DBFrXfAPbkhEcZ97WdeK29Dmrv/FDUnwLh4Uq6zkZu2Q1V0e?=
 =?us-ascii?Q?r2IhoYvN6XT3KNOK+QFVAL/MyplJSjiacO50pnrDRuX21ZU1laNndUKCdY3B?=
 =?us-ascii?Q?lP2BkYHznbHxffboalOaRa8Etllz2LNQr9CO+MfAtJQl5AmgSaiaZrCNpeB6?=
 =?us-ascii?Q?vliiIYv4X1ATqQnNNqcPYECozzYY3rcrcwNq7nlSU9m7X+Sph2FC9ZpCJF4P?=
 =?us-ascii?Q?ubPm3posgtv1fLuP5Y4QwcxRhtgSUTrPOTCTHwXUMOmCviTGSOiBwXm8Y0lo?=
 =?us-ascii?Q?YVP/KDPaIN1Xjje6zRwr3cAZz4M6ALPlr0dq2kl6qV9E4C08WIlNjBcWxrGq?=
 =?us-ascii?Q?02S3zG+ZkJA0Gkm3IH6t/XCRWYPEMrXWgVVVebB9pBILc+h+qwn7mviCIMIC?=
 =?us-ascii?Q?JQ=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: JU/qZD4uY8TQb+20OZGjdh01bz//3/qOzcJQS/KFHIc5EAkRv2e9BVEiwTtr3JvYO1IWsT0DB9VdOTeEVEtB1LsB4xoQ03AXVNc1ar1pUREP7MrEEnVSZ2l9fwvbJp7LB7tXSpsgrTH/F9D+TD99cLBQo6uUG820/oH/60Ef0ooTpOh3pDnLAr8MzNpzRNUEq6F1GAs02WcGvIGUojg9OpOs4dIQHTuDM2Y/LaGM4QBu1uvni1/KSV29h2p9dlDgNEcHVQ+R4zrVNHRIhRU3JBEuk+u1e6siAzGNOIXs8zlIAJGyfTEIf1hc8Z0mUTkL6bRfcRP/GFIgbmeuHSbSU9KODL1epTplQku5G+HbIjgl78TOiHaVGJIUeJ8KJLFJzt1iuP3Pzo3t+jb2/qL+EpOH5tfCQ/SqorkGo5g9sj8X+CH5IqBwKI4lT0M0qxw58vC5x8qs7PGdxrniUh0oTaFLaRKChREVrqPgRg1viOHEMtnEYb9FXHfkfPM+PmPUraMXg83EqZrFL7VqdYSPjvHcZfKcDA68JOcQBNOR4WcB8cUNHsYo/NBDwYjtxXsSFVQZfrM/xc+EvFulyCmRjz7v/me+rvhUE76bKNIX4D0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48d0dd41-8d11-42c4-96ba-08dd72b61582
X-MS-Exchange-CrossTenant-AuthSource: CH0PR10MB5338.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2025 13:47:32.9624
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uADkCogCphmlb/m1K4jxkM4SJR+18n0hXfVzFSx/VuBX6exJeizlBN0EsJAz2asp4h6H9mUJKRFc0LIFgPHebE7Zoene1plwargJT0JM+rc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB7252
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-03_06,2025-04-02_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0
 suspectscore=0 mlxscore=0 malwarescore=0 spamscore=0 bulkscore=0
 mlxlogscore=691 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2502280000 definitions=main-2504030062
X-Proofpoint-ORIG-GUID: yc_CEu7gF_WTeL5EpCUjUt9Xg4WkE3fD
X-Proofpoint-GUID: yc_CEu7gF_WTeL5EpCUjUt9Xg4WkE3fD
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=oG2auB2a;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b="SGNEK/xJ";       arc=pass (i=1 spf=pass spfdomain=oracle.com
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


> Add goto to ensure scsi_host_put is called in all error paths of
> iscsi_set_host_param function. This fixes a potential memory leak when
> strlen check fails.

Applied to 6.15/scsi-staging, thanks!

-- 
Martin K. Petersen

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/yq134epwe53.fsf%40ca-mkp.ca.oracle.com.
