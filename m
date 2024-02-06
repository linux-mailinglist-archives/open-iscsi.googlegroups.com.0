Return-Path: <open-iscsi+bncBDVIJONZ3YDRBQVFQ2XAMGQEWUSQNGY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F42684ABD6
	for <lists+open-iscsi@lfdr.de>; Tue,  6 Feb 2024 03:00:38 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id 98e67ed59e1d1-29608f00cbbsf261544a91.2
        for <lists+open-iscsi@lfdr.de>; Mon, 05 Feb 2024 18:00:37 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1707184836; cv=pass;
        d=google.com; s=arc-20160816;
        b=03oi6qBpUqfV2XFFSGvCsaoStsHEorCzOIMtzgK7HHFI4GDh3SsIwmBVNyb5Pe5v6e
         baRIJ8mpq6lFaYpOSwpQ8HEyYGVCuFHubqj369bS/2gXXEuwbA61hc+RtIC4EKB0M/H4
         GJaYxrOGCZo9Ol75rkR88MaJV2oOWCSI7nq7Vm5B+z3XdoBojN9hxuA4IfUag3aoHPQ5
         JojUoWvKKJJsuA9MFur5PqwGx6uVSRhQAsie+3eUZjsAaAP1O7Ause4BwPqoxf3wzbXa
         PkyNEY3Xm7mdl4cIdT0DlDCwKmlPHBwmDTrxZeEF0QfhJxs2j8AZkC8Cp6LxRXhPA3Jb
         Tu2Q==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:in-reply-to:date
         :references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=fDYxS2T/Es34jpzs2Wkkv7uS9HzG6G0mzirhkydc65s=;
        fh=WbJ23vpMuvCFxmdfSj5nAzJVLWH0Qz4ARripl7zqXiI=;
        b=KA7BnT731VoyfdygH+M525gdJMj3oQIM/kyYeFEil36w8k1gzFZozSExjO/d3563/9
         z8wDOIEmlAyDk/OjG01yDxbh20i6ydPRLlIpN7dK5cJPA4PozI0YuLqZk3Gd0u3ow2Y2
         6ghf6ReVV29q4YkseJQDvgLADz4WOywR6/YQcm8OK3yEzFOJKx6/P1+LhtX26MXXibAj
         FplyAKoVuavMhaym3kPBe77OtZ64s25GwfIAWGFMiuSxlKAOkD8m25bJBAdgCWWtrxBD
         V6rY4FeTMPENjSpTmefXlOYvKnKS6MNItjouVBTSEadwCevQXMus4pxBXl2mZtZIfiV1
         cghA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=hDa6VnC9;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=Yt7N1FqA;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1707184836; x=1707789636; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:in-reply-to:date:references
         :message-id:organization:from:subject:cc:to:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fDYxS2T/Es34jpzs2Wkkv7uS9HzG6G0mzirhkydc65s=;
        b=Pd8k6h85LR/ig/z2ydFye751CwSjveBdYM/y3L1mJT3CcUSaiButDFDy9KuZ/9QSL6
         fpyik1Tw4JBIQj+3OBuB3t6FLh7VgXCPVCs66iuQW7CWT07lKikyZHe/wMoua2ivxKs3
         IuWXl3ZhNLI4lTrIsZdyO0epd7VAAFTKo6oTPoPjl1MWNyle3X06j57uH6elwPLnCeup
         zh8KTnlWSukuDD+7KBIV0/6AHMiue7J9gF8vCDONmkoJ3ynRRpJF0Mo91wvRT2AUHuYt
         xdFCbwlhmin4LD+DENSwZbdLYndchbOG7FUMEdodtgsEQtqzTQfJWv8m2V7LPTs1l6EM
         rKIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707184836; x=1707789636;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:date:references:message-id:organization:from:subject:cc
         :to:x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fDYxS2T/Es34jpzs2Wkkv7uS9HzG6G0mzirhkydc65s=;
        b=ev4C0DH1ZjDOENNU/6ylHeD3t0dzQXGnVeTg6xrdtpc53gANXn9eDTUCZtYBVZgRt+
         k0IRYh+IxxeCbm3UCZdoYvtZs5NT8bCw3UQimf3wddAR1gCtGixdFNkFHpilKlSy76um
         1Aukz1DYh+VlL2qRdPZM0lHclzDw74mbO2Yl+ucYAHtKfezpxokCPif9SRYhkjz/XRiV
         GGyMk18O+N8fs9e3grziUtPu8sr8uDiPqsJootlqIgjuWJ9hx9MmsC+ou6UCTxSMbfyt
         zLKLgSaIhmMZ6hZX41HIIP6MQSjSjibi3/2McF6LvA99q8nn0BDC7nlxaKjNaFUi78iK
         Y2oA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOJu0YxgaW1m+3g8qCxKHB1RKyHCv3lc/6yNCxFvu607JEtrC62o0usL
	RMsfKTwC8BiTHJ60Gkig/QT06GE5v3kQMOiYy3LJotmpmLLMHlOY
X-Google-Smtp-Source: AGHT+IE0cHrS4b+OtPQ7EYDpeFwLfMGyVpIKvIuvvdfnJPjQgUAbvtmFmQL/Zk8wpaIq3SaZbw/oWw==
X-Received: by 2002:a17:90a:7506:b0:296:696:1271 with SMTP id q6-20020a17090a750600b0029606961271mr1251905pjk.43.1707184836075;
        Mon, 05 Feb 2024 18:00:36 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90b:817:b0:296:37f2:ff42 with SMTP id
 bk23-20020a17090b081700b0029637f2ff42ls512217pjb.0.-pod-prod-01-us; Mon, 05
 Feb 2024 18:00:33 -0800 (PST)
X-Received: by 2002:a17:90b:2dc9:b0:296:c97f:64a5 with SMTP id sk9-20020a17090b2dc900b00296c97f64a5mr156387pjb.1.1707184832906;
        Mon, 05 Feb 2024 18:00:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1707184832; cv=pass;
        d=google.com; s=arc-20160816;
        b=R5TIlgREtf1hWi5zrs7MJ7hLGLv94swzAPZSTTFo7wa0YUoUBZVRDoahO0pY8daIT0
         DfEznhSmgyk5utGygHrVYviGMIqc3Krw/k3BCRoQnF5H9977S7ikOqeJQejI5mtsbv73
         jtlaijQi0bPCU5jRozIJpWTpoYlL3kYXX80zKdFB9LiRjvFPkpIjsZpTFjVK2+Y7tKiH
         eKP3OIUgz0+1ge/LSHP2HTD4YBhCefVvCgUuPvryPXlNyR4dhahvI5fxI+Axv/k3MA5b
         ngbcyVsY9CYiQxxVwUh/rCifxuvP8thSkFhgRdShNPYTmhnmAA/suKLaQF7djdA+VRue
         2F7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature:dkim-signature;
        bh=eqUo8c1f6/x+gWJ+iCVbuU+szl/jCsoWqzLeZIT+j+c=;
        fh=WbJ23vpMuvCFxmdfSj5nAzJVLWH0Qz4ARripl7zqXiI=;
        b=s3tnFMdKhETR3jykAH5hBjFtMDjVN9phyIem31vZA8T2noWmUTkhw4aOKghpQK7UHN
         x+mCTsiz4598u1GhZ1VcTA6ucDaEsZDLXYhGP2ejdnjveb7Ayplx1n6TELESYEVV+/fu
         n7+FcMyIO/MzFtimsmKOi/WCv7olw6dzrrEubpVu3VfASvtxsKEFufbiHmJOslxXUT3+
         X89CBWokqld2F+AGsiC4alIQRhe3F+J/f48UgBExiWdzAEZ5AmyIfs9jyuaw1yRZoTXG
         yUU3Aw45RKdjveD3rg5/7gWinXqCPn5b8Oud73aFJfctdUtA/8VIYADSp/8RMDQ0TRFb
         UBMA==;
        dara=google.com
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=hDa6VnC9;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=Yt7N1FqA;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
X-Forwarded-Encrypted: i=2; AJvYcCVPb8lbIYFIi1VaGVofBDC+YIIlaVsfR6NySNlUZjTFPyRxpzn1eceronLMfFdoP+J9SVjxIxkUMaX+EzPcab5bH6IEbyNDtNbmsX8=
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id h3-20020a17090acf0300b002963a763b28si38739pju.2.2024.02.05.18.00.32
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Feb 2024 18:00:32 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 4161F0WU025525;
	Tue, 6 Feb 2024 02:00:31 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3w1e1v5fw2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 06 Feb 2024 02:00:31 +0000
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 41610LiE007111;
	Tue, 6 Feb 2024 02:00:30 GMT
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2168.outbound.protection.outlook.com [104.47.57.168])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3w1bx6scq0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 06 Feb 2024 02:00:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j+GKwU2XBu0wYUd24FRWKQ64ND5BZUGv1drEPCAG6WZ0xXrl8L30Yq+Nbo/uMakaqE6psc5a0JLlxRQ0iT2rQhALJrStrfza8oFzFTomO6xW/t/PbQg8raF1OnpVWlXLO3LmXOf86R9V8Yx/rfEtPsdTMRruv6eyZxRTJzUcEmKDJPf89bd0FFFa1dpCnzwAv5TqD/yYZptQI6yhOFAYyXo6oKEvCXmGoycgEvbkDG1N55x9+6NRGguvzTXXutvnt4JMlN+u7tRAZql97uE7HfZG7wlYVfvnYC87o1JoV0ZSJQVUEnjNCSXvg9VYSx7vup698Ype1bM+W0m0kgvjtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eqUo8c1f6/x+gWJ+iCVbuU+szl/jCsoWqzLeZIT+j+c=;
 b=L1HYJQfFh0C/gDsJUsSj25aEUoBFCP/t4WZSqKR40RVYqua4ve7mzj9wvgO9/m1SroO1elEXFjUNImMZWJwxBOe/MBmqujyXfBne4vSLD2pZ5OqHmvUMp+AUMTpSRIgLV4304y43wRud99+jeuGNB08wwED0cadCyDFBAUarwoIURKuqFbQBXXBUwlBvMO96jpnBG6co/x1StXC9RUUMHQjhHEi1Kq+SM/L1RwWao+I45/kxlzSfbOflkUrExu2IMG0I2EXb8wTb/ENPLZTJKwH1DTK0Z/kzTImi5Jv6+4VB0spyCO1q9cjdXBKVdTOkvnUtKmTP1kzTeTeHx9oZrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from PH0PR10MB4759.namprd10.prod.outlook.com (2603:10b6:510:3d::12)
 by DS0PR10MB7406.namprd10.prod.outlook.com (2603:10b6:8:158::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.34; Tue, 6 Feb
 2024 02:00:28 +0000
Received: from PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::3676:ea76:7966:1654]) by PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::3676:ea76:7966:1654%4]) with mapi id 15.20.7249.035; Tue, 6 Feb 2024
 02:00:28 +0000
To: "Ricardo B. Marliere" <ricardo@marliere.net>
Cc: Hannes Reinecke <hare@suse.de>,
        "James E.J. Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        Mike
 Christie <michael.christie@oracle.com>,
        linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
        open-iscsi@googlegroups.com,
        Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 0/3] drivers: scsi: struct bus_type cleanup
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1ttmmnyic.fsf@ca-mkp.ca.oracle.com>
References: <20240203-bus_cleanup-scsi-v1-0-6f552fb24f71@marliere.net>
Date: Mon, 05 Feb 2024 21:00:26 -0500
In-Reply-To: <20240203-bus_cleanup-scsi-v1-0-6f552fb24f71@marliere.net>
	(Ricardo B. Marliere's message of "Sat, 03 Feb 2024 15:38:59 -0300")
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: SJ0PR03CA0141.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::26) To PH0PR10MB4759.namprd10.prod.outlook.com
 (2603:10b6:510:3d::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB4759:EE_|DS0PR10MB7406:EE_
X-MS-Office365-Filtering-Correlation-Id: 129cd9f3-fe2f-4617-d6a2-08dc26b7642a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xaAuUelXugV1C1Ks8ErBIgMIZ5SpaFaccCCt8rBXrAUJug52Nv4PxVG0gelkCNRxJl1mGFOwKTMoW3JqiFUxT+1xK+DqF2+jy7QzLTBcVRgjhGLdCDv/h6I/2Rqo1Wd00jC9XsAgFolCRgTqNBnCl2zJS8abAPkkaiGUWAs2ybMf+8jt9fw2FinHGpQ+UvMVi66kR0Mhd4l76ttiEkPBO8mgDVwUc6ajAjR8qqJVLM4Af6qx3tDHd6yFU8YK5c87a9qt/WEb4MFzuce+I40vr9lKFzQrfsnbd2yTVxF9vCK/ExFhurBMno1bKjzlKX/qAHtrod+k4+smb0L2BG6XWRr2wbqVmQJUnNcim5WeJuMLVWO1R+jyCYLYyP03nIl53nHbHbnh1tnX2rQbcoVA7cId3t9rGAwS4RusAZQBWkeVjl08FJ7yCfDaOxDY248THvjlDHJYVB0Kp+xYzkKYq+M6eMbYLmokU1Anv76heEZfJJ0oN3AUI8o8PidOZSWpK7Fwzz4B43GCy1UcbNcihZVX4ujd0MTkzoVVCfTlwksefphGjxyzlHne1OebnPLo
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4759.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(136003)(346002)(366004)(376002)(39860400002)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(41300700001)(6486002)(66476007)(66946007)(54906003)(6916009)(36916002)(6512007)(8676002)(478600001)(66556008)(6506007)(4326008)(316002)(8936002)(38100700002)(26005)(86362001)(5660300002)(4744005)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Xo1OahTRwZ0Xr3MF5ijisShdzyqKLS4hGg8kVArGmNBoIUSge9vL6O4G6wwk?=
 =?us-ascii?Q?bZEWQ1VNqQlFN1hudd+kg9dw/9ysPXOHu5HU2NEp8H38l9Wsz5PT+cR7evm7?=
 =?us-ascii?Q?b2NwA/JUlwHUpqlBzwLJua1yK929WJ93VjVVKERRbAL4HTjrumIWX/FjMQ16?=
 =?us-ascii?Q?qDTYfQtKQR4qkPbPx/XORdh+PHnYpgSx8F3IRFYHnRbbWTcFowBHnaBWOU4B?=
 =?us-ascii?Q?aTVRcHD7Yo13Wr34JjSH38MK69QcCB1neSAA+eZSWECzyjFeAPX0uVO6k5Rj?=
 =?us-ascii?Q?w4JvkYIOui2T+Rb76cMWJu+Jy31c9w4Vb9r/hjmSOeTCDPXe7t3SaUMsI9eN?=
 =?us-ascii?Q?aAJm1LG7MBNxCmif2o1DvzBV7VP1ysE3A4dxs5VlQXdmSHIaAUKiAOv/11LZ?=
 =?us-ascii?Q?+84rkUc6gHV01S/adrOpuv+mtVtVptA9v6UGKPjWASXcd/7XKnPpoo1bif9A?=
 =?us-ascii?Q?qdGjhav4vXVgjKwatHmxaSLlR9v6FJ0GR6RkgWL3zufcS3LcAMfODnXqVkFc?=
 =?us-ascii?Q?nV+bYK3vzLhDu1rs9CK9qzVjuW4+LbyFPl7DdDNes7PKZEWJSx8Co9DUYyGR?=
 =?us-ascii?Q?kPeKwJALrcUbiVcxQKPbzMG/eMh1K+6MsMUfQeC52J8h8BvRhLLry9MtueQv?=
 =?us-ascii?Q?GzuAnaCCpl2eBKlHHgR7yAM7dP3UHhLh1LGUNUk9IXW3p5Mnop/UYKjb7Mg6?=
 =?us-ascii?Q?BvJJi7vFq1TQ2+LQe27GjifjqGRrY0NH0TLTYYei1tKIF9EZ8E33SGITytKK?=
 =?us-ascii?Q?pMbJzheQDq4IPNi1vn1YxV6qSaXGIjlfeZBZfOpCl/5njoDxQHvXQs+1Aklw?=
 =?us-ascii?Q?WOD5A6vAxVZHjh3CUDjLI04zw9UeDsEuwyCPdF1xv3xKK82RE0m8vJIwzzv8?=
 =?us-ascii?Q?lJ+EuOloKT5+xilTmz4KZ9cRhSZkbc5NmtVjfwjdph3u+l/zkm7Z+GGli7UJ?=
 =?us-ascii?Q?xjDq7+CUCdDAJpvZJBdaOyM3RZTcDn58OS1eMHpI0DFSSNBEkkHkEEmFe2UA?=
 =?us-ascii?Q?6Nd82+kJ5Cj1yjSjkxbKLFe9Gi6PME7vy7U/0Lbt701ZI4uTgOO8COCXPsIR?=
 =?us-ascii?Q?6uGl3bovphlRDS6MPuS3wn9NWb7Bpp1wiNe2TKeunZCDAErZwsWHilbzxv8q?=
 =?us-ascii?Q?NbOY3uuZRAXinxAQx73xAqoJbtQHfNMVKrM2yybyjtwb7BE6OjEx5jWUrqbB?=
 =?us-ascii?Q?a9DHxGre33Z/E9OL+lbHKmumWM53MXYQqV7PEoYusmzV99VqjxShSVedqGIc?=
 =?us-ascii?Q?kfN2pOWK/I/BpkWow/yQKlSJm6k/xWVLXk44Seo7MmyqyH4VXMQzhuwRGl5W?=
 =?us-ascii?Q?XErlY3l+kdSmyyaMv31aSqjKp3Wy7aRf/fb9wlQMRiVXQNo+vAaZ0DFRUdro?=
 =?us-ascii?Q?FRuzZengd0EUzaloKH9YQiPHQfofX0hsfd81F4v4JzYGi33WODlE53563A4V?=
 =?us-ascii?Q?zQ5c0KxQZ8K4QY3yaXqNBp3KgncuBG38W0HQcIYmdBwYrCCAU4o/t39gCK3M?=
 =?us-ascii?Q?YgmruGRALFOuImNPf/t/ml12+qAVTxYyS7IzIlfMH2oUPS/hEA5FSu6O03A9?=
 =?us-ascii?Q?KtVQjHURvR3VfCHU/JgkM37zAbJh9yMyaHquY3j8iv4II5BLQdOQr7pz0zTh?=
 =?us-ascii?Q?mQ=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 5LKdiZ0FDipKmvuJvcBGPltahSuDrbvllmdOKkqSlaIooaLYOgmgieS8UT9dXNd3/oLCK4sxdETx3u/SNsbyuVrGd/nCLX5tdiY+UQ14fMv1kNpBQ8d6n/XH6kFzhzj+m+Ky8iLQaEMxmKbLG98ey0W1FtrSvEr1/siSsrMnxtpNJ/GLbyDFrRvOjz3+voAHfQr7Y2sLyyOPCM/9LPQBn+eoc9vakr9dr8HrBmkJEZiu0EuFdMpzAY0wxA6WBVigCeYqFfnpmKl9vI38aQgvPpZTPIs6KNuDdgGDOb4WyXGSeK3OPWTHnRFksr0WyTdz0d3YrRt3BP5eh1gHHsKP0IcNux6h6I1AM9xzddwlguqgF3JOwCc3GReqWf87LBmv9DwRAL+l5GffZSYCDx7tTZzZmqT3H8OuzPdT/5VYY0Y8tDTkQuxcuHAJMFOBDsCs+3QsuzHOWguDIDAKGyXIY34aSf3x3+kIV+/l3kYDyrc6M3ACYguVCKfT3JrF4jLtsi4C9WSOssDAqhdw8kpoYs+2e7PF4NsVgQvfqy02TIev0JAvGciSZR67clj1in2hR5xuw6KscnHUUDFmLCXL2e5ypY1zt3f4J1wT73apS8c=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 129cd9f3-fe2f-4617-d6a2-08dc26b7642a
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4759.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2024 02:00:28.2164
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QXMT9H9RpbapamKr9iJOI7FnyexyjejPccQV+WjFYmyFBmKDNxOz9nOLz2pRMnvJssfdtQfQNG23QYpJH5C7kzrEWPoonerM+xwrZeX7I+Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB7406
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-05_18,2024-01-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 suspectscore=0
 mlxlogscore=695 bulkscore=0 mlxscore=0 adultscore=0 malwarescore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2402060012
X-Proofpoint-GUID: _jwbdH5Qy61aPe5jyH8_QXzvqyUeJEQJ
X-Proofpoint-ORIG-GUID: _jwbdH5Qy61aPe5jyH8_QXzvqyUeJEQJ
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=hDa6VnC9;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=Yt7N1FqA;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>


Ricardo,

> This series is part of an effort to cleanup the users of the driver
> core, as can be seen in many recent patches authored by Greg across
> the tree (e.g. [1]). Specifically, this series is part of the task of
> splitting one of his TODOs [2].

Applied to 6.9/scsi-staging, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq1ttmmnyic.fsf%40ca-mkp.ca.oracle.com.
