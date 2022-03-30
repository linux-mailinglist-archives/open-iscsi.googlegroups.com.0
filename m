Return-Path: <open-iscsi+bncBDVIJONZ3YDRBXMQR6JAMGQE6N6ZWBY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id B36854EB8A3
	for <lists+open-iscsi@lfdr.de>; Wed, 30 Mar 2022 05:02:55 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id o1-20020a0c9001000000b00440e415a3a2sf15168674qvo.13
        for <lists+open-iscsi@lfdr.de>; Tue, 29 Mar 2022 20:02:55 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1648609374; cv=pass;
        d=google.com; s=arc-20160816;
        b=igL2g8T6mXpsOIweRNFVJeccycG22OuDAyiH5ZspUfmvJ9dtHB2b395zuKx+FJS4y0
         geqvMaTGLvrHrxkxeS8F/NIWXXymVhWRlZJXvJy1x6tLZR+9+mAGHw+uwWMi2d8j0z5V
         vhyPg9Fr6ruHXqaBVSZjjtZTNBAVouu4HU/LP5J1RY9y9pNuCuQENqy28Dx3aBI22xwA
         enxfaNotTJxwV4Rot87aldKsa/TQ1nKfbDNV79mLHLEReZvsKnbOC6q7B4KfYfdxECiq
         /uHSn8fvRldr18zUqn7WYkj6EqTP/5m70evE4+0c/QomhmExjnaALDtwx+TWk9o2q+3E
         j4kA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :date:references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=bj35ZOacoKTF0qSqZFZ/DwAXzMNBb1JLE9/y4TVlLLQ=;
        b=rM542qPPrzEe1UXsef4cFZmJQ5btjsNGpBUmGW5Y1ZxDOeZpRD4Frxq+HJnjrzHQya
         uEVzaF2bTFCRSi/IIU1tGypSpiUoki6zORbwFBLChbqaJRI1ViXgaEHrS5Rq979BgGRm
         AxpbGru1LXcGS+MSACTGZq2id6LbYsv7h4Tov7X6wdWFezuv+FCfCVZuLT74WZLy1JZ+
         cHriI+aAkyaFccyThnzs07V+XMhhoE4avEqETRO+29RZuavw8GwoJkjwvQGT/z9DJHPK
         8cF03gNTVJWzSw/4MRdW2ILMBNcWb5dm6FzRdfmpA+L3IBPX4dz9acuUlHuiI61taL6V
         DPKw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=wQ48K86h;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=C44Mh17s;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:to:cc:subject:from:organization:message-id:references:date
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=bj35ZOacoKTF0qSqZFZ/DwAXzMNBb1JLE9/y4TVlLLQ=;
        b=LPaWZccb71p7V5tPtJeSAHz0aI4tCKMqEuBt55toxYY6uvVb3GhvuQFSAo7/AlN17U
         t4cvt5AC7znRctOCztNMTtPhUyBf/GCOT6ttlstrO/TKARfGurJm/U67/gEafTASZ8iP
         bp5IMOIEjo0cq+AvXcZMNgEMzTlY/Sx5NMVqbk3X+Q1fOiYc5gOEuSBB7MQEY0DGwf1a
         E37Mi+Zj3m7mKj2krNO+ysrGhcf/osI1KXZJcJMqX4HoVKFTr0alCj98vhRn4O78r4VU
         HMcqGGaMSKndqerXfGi5SeARq6iWEei7F/tHpIz7imBW+wJbWsdm5tD3/NCGoZkMbGDj
         lhOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :message-id:references:date:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bj35ZOacoKTF0qSqZFZ/DwAXzMNBb1JLE9/y4TVlLLQ=;
        b=tw4kv4S5zBJrhJJPVdg+kkoqExg/+YOmG78cBDz/ZtuevAqK3prvKKN4hilvE6ESjk
         UMkikBi3OcfZ1nLRLIkkRLgqLQbaGxXIP+BmVTOEAn/L2JdIFQCyhjMM2tzVjD9oneBm
         fwBiiB8EZSh7pPiD4i2UR1cHZ5Nyr0rPcMQh+hqPS+aMKQ7SQa582xjrVcCe7ht+L2QE
         u2thQdWViI8T0Wt82iq/YQjoA0aoZzm4gIi9uQVbB6Odd/2il57FzhR3rryoBLuU1XDl
         UCLI9SZcjImRzWZQzx/OR6ffhowPabiFfzezXuzJhHbGYRyxnysY4czPcM9AEI4IbJeB
         E9eA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532uioXvvngssAVupGKJc2o2KDVQZGS8ou2C1dZhty2kHYZK5G1Z
	NDi6/OyrmRNKqsj8R+sgqm8=
X-Google-Smtp-Source: ABdhPJyofU6cvR2LAMNJvGQPkTcv/nGdz9saAHArYf6aK50tIwnyglBK1JHcEs+Z41Vc8tHMhZpq1g==
X-Received: by 2002:ad4:5de2:0:b0:441:6579:eec4 with SMTP id jn2-20020ad45de2000000b004416579eec4mr29326206qvb.9.1648609374537;
        Tue, 29 Mar 2022 20:02:54 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:a391:0:b0:67b:4368:a5ff with SMTP id m139-20020a37a391000000b0067b4368a5ffls473985qke.4.gmail;
 Tue, 29 Mar 2022 20:02:52 -0700 (PDT)
X-Received: by 2002:a37:a693:0:b0:67e:c38b:c938 with SMTP id p141-20020a37a693000000b0067ec38bc938mr22289458qke.206.1648609372769;
        Tue, 29 Mar 2022 20:02:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1648609372; cv=pass;
        d=google.com; s=arc-20160816;
        b=Kk0HWqTlaKgoCIL1xDnQ/oULmn9xjSbO5A5R/h7dx1N53/GhuJRcS7LanOYtAALi3H
         JCf6Br/DkM7S9z3lbteB4UwDVDYjGyztok5tevmFC0Mfdk5R5VLXQdE2hPH8d+3Oqi+g
         fHqTX4Y7oux8qdqesoA3+qaOmxEUN5qfC274MIueiasVOu5vpfkXuoWvDUWec6KA7xxS
         2R6dl5Z4IdelgyuwCL2CZRfciAf9GxjliavO+TiIuvbbq71uTPOBs0OofBexocs3eNYX
         ivE15Shh9CvftiAcitdLG2IzmQK8OGHVpdPG67rAfWnz1zpHIzuiOO55BPJTFW3yYEix
         T8Yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature:dkim-signature;
        bh=kw3m5wc+1nbBaH7OMSl0JIOi4Hr/Kt66Vv3kcGRhjro=;
        b=Ig/JHnISexzH0JaxtT/lPRwoax1qYi5jKcTPo+CR15VoiuXadDn4NktlMuUXrDrb7G
         tPrg9UrfdM5oNQ31dEfBStUL6pvSj2xP/ehEquOj7q43mVexSmGv4N1pkykj1MGC0DgM
         xspIfdquqOg9QUkUmKKgQ9jfKHucqIFBFWM8GyjybTJByX/gHEC20BVay/H29i7z1gjF
         fbXoaq+xFvgEGwpwAYUFwkFeXwC2bmqmxoZhcFvvvT2S8/DqFiyOL+prEWZMu9gPQw98
         UhwLY7KGdqahnW/9N3NkIEob0L/ROfwKgnluSx0c+PmzWVfRHc2P5rVdeR4vMrDahmZK
         txGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=wQ48K86h;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=C44Mh17s;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id r24-20020ae9d618000000b00680a81befdesi958259qkk.4.2022.03.29.20.02.52
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Mar 2022 20:02:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 22TKn3cg019606;
	Wed, 30 Mar 2022 03:02:51 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by mx0b-00069f02.pphosted.com with ESMTP id 3f1se0g8ra-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 30 Mar 2022 03:02:51 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 22U2rjB4015831;
	Wed, 30 Mar 2022 03:02:50 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2168.outbound.protection.outlook.com [104.47.56.168])
	by userp3020.oracle.com with ESMTP id 3f1v9fjsta-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 30 Mar 2022 03:02:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ku6v8fs27kFMYR6O29tFLxXS0MSquR8w0NT2IPw44XvuLHqSoaV1XzLX+vRHU/SgxPMgan9OmYeQORGnveVGoXTQuo7g+UycQO+77Svwasu1A/6DEkeRa0XM527CdulUz/JozK/VVO0Sdh4kkoJyw7gw1p6V/SdSTRoWInFB9iBNjGw37N11uI1ItxwInWY1UPtFjvo5PItUoeXV/+JOfhE7eBt+mAWWrWGToR0iIy09VX//PfPZBnVsPzVOb+X3cL9eztJFwAxbYr/9r/5pWKdmtxAivPmQf3ZioQK5rbtNMBFMPY5kufa0v0Rds7Zx83SvftdAroxqoT5hcSsIuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kw3m5wc+1nbBaH7OMSl0JIOi4Hr/Kt66Vv3kcGRhjro=;
 b=YwyiYW6TJ1fkOgJNoUpNUX2kX9Hw9PvgO/0LsCcEw58DPuqXt42UZeBYk0t1aI/x+SS/hH4h1iCh5tqvZ2SLMTS8LsZRHSMSO2RvArMAylnqvRH3Z/fgHLr/BlAfGZnCSGSYmd7xXNjs6gegKJybglUvtQZhgvlxDSEeIXsG6XMxLbz19RcQZBNhtgiixFZYUuZu8KHVVAjV/uLrppwpv8jsvUTbk0j+5h2WzRef7XnvZ0Qs62Uv/QiyemWnywlIyQufeAwU8irsR+rxFugfIs4YYHKL5KYFeEo9rC4TYitjPTkWxh0xQ698q9xZXjTaQZ5S1outswfePsyl8TA1yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from PH0PR10MB4759.namprd10.prod.outlook.com (2603:10b6:510:3d::12)
 by MWHPR10MB1309.namprd10.prod.outlook.com (2603:10b6:300:1e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.16; Wed, 30 Mar
 2022 03:02:47 +0000
Received: from PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::48e3:d153:6df4:fbed]) by PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::48e3:d153:6df4:fbed%4]) with mapi id 15.20.5102.023; Wed, 30 Mar 2022
 03:02:47 +0000
To: Wenchao Hao <haowenchao@huawei.com>
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        "James
 E . J . Bottomley" <jejb@linux.ibm.com>,
        Mike Christie
 <michael.christie@oracle.com>,
        "Martin K . Petersen"
 <martin.petersen@oracle.com>,
        <open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>,
        Zhiqiang
 Liu <liuzhiqiang26@huawei.com>, Wu Bo <wubo40@huawei.com>,
        <linfeilong@huawei.com>
Subject: Re: [PATCH] scsi:libiscsi: remove unnecessary memset in
 iscsi_conn_setup
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq14k3gxhv7.fsf@ca-mkp.ca.oracle.com>
References: <20220317150116.194140-1-haowenchao@huawei.com>
Date: Tue, 29 Mar 2022 23:02:45 -0400
In-Reply-To: <20220317150116.194140-1-haowenchao@huawei.com> (Wenchao Hao's
	message of "Thu, 17 Mar 2022 11:01:16 -0400")
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: BYAPR06CA0042.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::19) To PH0PR10MB4759.namprd10.prod.outlook.com
 (2603:10b6:510:3d::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 13339cf1-d162-4589-f507-08da11f9c4d0
X-MS-TrafficTypeDiagnostic: MWHPR10MB1309:EE_
X-Microsoft-Antispam-PRVS: <MWHPR10MB1309A416CB679D02AC1E49BC8E1F9@MWHPR10MB1309.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EgERZ1T39+djG4AySszvojgYAuleOT3Gk1FE+1uBPadFNIeAFufoIwrgTC1BbZz/M44eGOu3uWTnedy4JMoa/mL0J4i3QU6mUDIkbJR4efc6cPJSNZ1Mn+xxUtdGy/wdEGgu+vCCVhPoDHrarzPuCneHVUCbn36+C3O88jhp+Y1Zfm0SxqptU1wqtkn1N9Trsa1eSahmu+icTvaQ7bhkyZyWWQEomFraUNKtJGTiLa7c6qrFkupn2ys65BrBW4KnqhD4J5Im+pO5Nmbbe2JNwWxaulFZGBwnwcBZ9O46b8+pl1VlWfuftuROCiHXzPZD3ssI8iajSxOJZToTr63Rb6bpAS+XO2B29opOnNowhWDFgFsAo9XogZ0Uimt/gVwPJqMWIH1G8r6e+hW2cuN0j9/ZczvGlrNKenYoAYMBs7k2TGQkwvx5Md4PIJodNCpnAC2FkqOPY7nefrnzZu5u+BFgnXVflT5DbOEXD7Jgce+cMvce5RagVGQnSx5eZTO6K7450ixAV1G5694J3C00pEMkhttamrJz3+ISfJWeP9dLezKlwza1PDYPFUSZjGurrCXTCdXAG55nrvNZ3mkogcmrZvXiXwtGxAfz13g/n7QjRfN7xqdS4342JBC/O2FMiZOZskUour3mvYeJOU31IBZYmOX64mT0vrqJhEqdSh70sOnXwWllpL8oy73EZ+gtrIWfSoA09+DufM9PYZ2Fhw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4759.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(6916009)(86362001)(54906003)(316002)(6486002)(508600001)(66556008)(52116002)(66946007)(66476007)(558084003)(2906002)(4326008)(8676002)(7416002)(6506007)(6512007)(38100700002)(38350700002)(36916002)(8936002)(186003)(26005)(5660300002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PvFQAxolNQk66WkBbRvSoG+yDmaA4zvybJSgfWOvrrEK0/lDGJ48FrzVtOJp?=
 =?us-ascii?Q?92Dy8rV/cwTgcKksgqiEqP5XmNhCyRUjRolyvJaiDvL3c22NCUAYpprIonyn?=
 =?us-ascii?Q?Zik750fiIW+jA1pkNOW9xLY+8Y4AAFWrmyOb2OGDLb68bXNikkuCwqPook2f?=
 =?us-ascii?Q?xxSW9fpyH4IrzAOM1/vISuiP0m1ZCQnFl1uf2fojDLuaHeoJKBrNP162OLX5?=
 =?us-ascii?Q?Dld9G8QCS1yhwTD+e9aRK1UVgGXQxUG2WEgSelTT1vs0TTvAuIfeSWtwG+4w?=
 =?us-ascii?Q?+EgtiX0K5xJoyHfhYl12m/w24pVyjImwVeuPVAKe3gK+YZ9TeeTVNCfzrf9K?=
 =?us-ascii?Q?uGKLK5LZzMKLZcT2vsao535JoMqqqZsgnT7eywlghDZv47XKXjJwB6oxl9Yz?=
 =?us-ascii?Q?dLvPJP+4uDWZz0Eh/zDt/t6aDrWgOEG/RYs+ngLCqlXeOvR2+ARidSxln+Rn?=
 =?us-ascii?Q?/u2P3WfsBfEo1GT5eog5ZIGPHKUef8Xv+XUnoJc7N57o/MS4wKrGaU8gidan?=
 =?us-ascii?Q?4Qr23iX2wjYDimCHcdOkIO/e5qcyDEi1a/T6faiUQTzDxlEnOZWhaIPfI4Fq?=
 =?us-ascii?Q?aPO7l8P5mho3KCz0cNUxj7gUKe8IxMwlY98UFhajmyFJBqRuGwYNkOA3JG48?=
 =?us-ascii?Q?6QnzmCqsFtXOQtQ0cd6UESpC0/zJaRS8YK714qeBYLDcvdIw9GBQkC8f/F8B?=
 =?us-ascii?Q?IFD2TWaoNtHl6dFRs68swCGerQ4RcA0b9815PHPvrBr1ov43bOfoJvjNTXKk?=
 =?us-ascii?Q?iSuaNVApIbcJBCmxSZ8srshgonodU+jalFhbplDx7xWGj8Wz4FEtcmTzQM9b?=
 =?us-ascii?Q?s0KHKetQAn3bnJdnppXgcHWqwa9AQt/o6rWL9G0tTL4Spo2DZt1U+DdTTa0J?=
 =?us-ascii?Q?mNI0ob1lwmNW9+6rz3UMaNIqXR29zOXr4SNytNmXp81R83mipKb4V3D5UJQB?=
 =?us-ascii?Q?ddf4xjDAiZErq998gmK7yeepP0c3qacwP6lIdfpXjTIZDOaPTk0l05B41NKl?=
 =?us-ascii?Q?igDbxz79AK0yJwxKTt6FDtc0JOyejQzb5XB2Oy5xDU1ONCe99YYfce2UnUYG?=
 =?us-ascii?Q?f/NyirOzylKVA4yD6gAabF03xKdnurWd9j+wGf0wvEIQlqgcrf7yNVSgQw8y?=
 =?us-ascii?Q?RqEVcU5o48RIE+cAAL/xCA4FFwQbKz4H36sUtpGzbfKRtD9I6yShhF76Qc2b?=
 =?us-ascii?Q?eg+hk6DCrG1rQvz6ZQCLO/bPXAxYCqT0clvjUowp9wAynT2rRpiwZr6zYeA2?=
 =?us-ascii?Q?W+R/GtRLmgvXZYE9XP2/N8CjzB82OBokMmEAZ7Mq5gHR+Ksxfz24k2PNhd0W?=
 =?us-ascii?Q?5q4NArehUgH9o2jk7VSfJPDAjifKRKRYIMnaUaOEBbxMThGoWhKxFkUdKVMW?=
 =?us-ascii?Q?NFlcGFYX9BxXceBvD6bcK3LeoA3xkjUKq5FskaiE9AuYPykTvd+x5QASfUdk?=
 =?us-ascii?Q?3Y3EplIHTZQIF10AaJsgFhmeeowgIC/E/Uds++2T5vfa8C+hnQ0QJ8Ub4IOq?=
 =?us-ascii?Q?E7gxNeCA73ZLVji0yjySAB5OCBwsSc8LB/pkYrSVrzaCEzTV5m2lMWPux/Eb?=
 =?us-ascii?Q?H108yG18kwuGlw6EwL6Yn6KRkx+7tmLghtaAf6D3FTuQ7IRnA7zbNY3Hya1W?=
 =?us-ascii?Q?K8NH4u+7j2H6PU8L128sUaSHQKATKKy6aF2DHLi8gCGcXNwrwHGNp6Y3cZmn?=
 =?us-ascii?Q?HWT+7knJ8bBM1GCAOEnk7TWXijEXQEyQAhSuqNXJ8CieMVV7naJHjCCtbrJU?=
 =?us-ascii?Q?fGbNsDpqMMCIxpQ3ZNxQB1Cz2VdN8/c=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13339cf1-d162-4589-f507-08da11f9c4d0
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4759.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2022 03:02:47.5715
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9hfSZTWYGn341IxHfwiG2jRHc6r9VYnjY95aP2RfE9ZTcw0//Wwv5fiAOI0mbvNb4l17xF/9I3wbHiNsJMh2KZ3RrAcYaJ4OV8OLXatCgYk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR10MB1309
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10301 signatures=695566
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 malwarescore=0 spamscore=0
 adultscore=0 mlxlogscore=770 phishscore=0 suspectscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2203300013
X-Proofpoint-ORIG-GUID: yf0Ip1-AYXewesPT_mDpH6MiEEH6zdRE
X-Proofpoint-GUID: yf0Ip1-AYXewesPT_mDpH6MiEEH6zdRE
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=wQ48K86h;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=C44Mh17s;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

> iscsi_cls_conn is alloced by kzalloc(), the whole iscsi_cls_conn is
> zero filled already including the dd_data. So it is unnecessary to
> call memset again.

Applied to 5.18/scsi-staging, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq14k3gxhv7.fsf%40ca-mkp.ca.oracle.com.
