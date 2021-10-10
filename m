Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBPE6RSFQMGQEPSMGWCQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id B98F4428272
	for <lists+open-iscsi@lfdr.de>; Sun, 10 Oct 2021 18:05:18 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id k18-20020a170902c41200b0013f24806d35sf840584plk.1
        for <lists+open-iscsi@lfdr.de>; Sun, 10 Oct 2021 09:05:18 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1633881917; cv=pass;
        d=google.com; s=arc-20160816;
        b=qVM3LudeyhBGezZnLl1ipA00FLEiEDlIlDhPTYqPeWcsMYb+cr1q3ZAXQx3kyy/ay0
         0nnaMQrMjpyto71tsgtOFCKtznr4ECqdy4MkEk1PqgjH3IqOKK7zmKzlcSh0zczEH/EJ
         D+FUn7iDwhNvaMNlEEaqb/1jkF1ka03hwqQMysQ5Rc1ZRqumdewC+HP1oXrPLWZXwETk
         fy/yjvwivnLaWo0LjuVw6z0Gd77wUGYLgMdK1DREDKuiQwnH9YD6VC8tqjsdroiYcxiq
         vT9LLcwoyxy1xtUz+1TBacbGZdiOc9sM0E7+ZyWRoLwYlVCt7UsVYZ5UGEDBGYu+aZw6
         COpg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:from
         :references:to:subject:sender:dkim-signature;
        bh=Bo5GkCDG3q97SELPtgeRihfSVdkfjfBMeZZuTar7XaE=;
        b=aSwDXwoJp+LFJ5CsmyZNydrG6NNxG23ZVywSQhjjSd6Seec0BidlVfXzqZzFhjBqvG
         yZ/nBCuTb4TDx5e2YkFtK67y1lLVS2Fwby+2cFsZ+SNRwTaezzbN+fB9FfyFwIkLACzh
         x/g5R7k7M4ctgk+c0tFvu/VV/NGwDCutpYFsK3T9mVEMG8exK9so2YLSWkF11eS18n68
         1p3A5CWUo1q3MsEuk7FzUU1967Th/AyEh58uUQ+BeiX5jik/hcWQXnFQUHM66krnhTRm
         Lg2iEnGP+fsGQ3GfxcEoSf94w3xoboFnOKMrqUdW870TElzGqvf9tchiLEjwy8YUQJyW
         HtLA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b="yC/yBoFs";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=l2h7Vm4M;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Bo5GkCDG3q97SELPtgeRihfSVdkfjfBMeZZuTar7XaE=;
        b=VluWj+JjLQbJe+XW96Y68Y5nR970yUQF7tuenDLYnCOfsUnDYEeaaD4BtZ9MB+TxK2
         dGej/mQRh3JSkCWtRZ23OAktBR3EFgjXVVPverbQwHe4Ize4nL8q6yngItP+A+iROXPG
         3FJmad6Xufg12QyCAnGkvC5fpbGZAp0ZvzTyuvdpEhQhZGkESD/otM387+5Hwuhm91cE
         zWc6/d88ZY25kXpjQBM1M60fDurdzfu5VZGVWmqy/lLbOPqwy6QeJHHQ73ESFeYNrBG9
         GRl7Tlbgwt6MpTqyMvv+0/M7ABuEFxuQwmk5fwb6Mwc0ZLk2/yrxYPio6RV/mMo4mfQd
         VKXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Bo5GkCDG3q97SELPtgeRihfSVdkfjfBMeZZuTar7XaE=;
        b=HqgoDGkDgORnxe6zk+JKC4YmOsBdH6y+X+tYpsrcgTLiquj7sn6wHuCN2SXDgKz7V6
         OMReC5R/DtjKLwgk0WCywjAaeZqMDHVp4wcdHoXh7gGqrk+8rZwjstCI6KqTu4WrM2go
         idKwy7johMEdCRYda4VMQLto9QINEE4dgo2H8LsGlIc09zf91L/n+pwFXbNQNXi/2fj5
         mOdht8xr+JEL6QhxBC43N36uY10VIo19kux7F2SD4ZIjZ3ZaSjqvZxggzWJ7JCULXF81
         tipJ1waj3UEoBcRBFBAyiPT+dc3KlFpFH7XxD8Vxv4SBw+kFOMUosj0lKWI0kPB1Uv2n
         gXbQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532Q7D6nHHNa1CgKlQCoRk7xHfkSCGdEdApzVFq9JFSbVARrEwMF
	vzCqktxkbwGxSrqy431mwN4=
X-Google-Smtp-Source: ABdhPJwyGOTJN9E65O5Vm632b2HjNleGAyu6S5VDQnVBO5LxBIltroedOwdKBU+rJ0G0w4XA+jl7AQ==
X-Received: by 2002:a17:90b:4ad2:: with SMTP id mh18mr24132869pjb.18.1633881916865;
        Sun, 10 Oct 2021 09:05:16 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a65:6252:: with SMTP id q18ls3036424pgv.0.gmail; Sun, 10 Oct
 2021 09:05:16 -0700 (PDT)
X-Received: by 2002:aa7:95af:0:b0:44c:b07f:4970 with SMTP id a15-20020aa795af000000b0044cb07f4970mr20763364pfk.23.1633881916150;
        Sun, 10 Oct 2021 09:05:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633881916; cv=pass;
        d=google.com; s=arc-20160816;
        b=ArlTmaPMQDuvTOQ49afKw0vf+o2zAGR2yAoL+Hr6USEoFkV2wHQLr67VODcpkWsfR/
         xOLJKXlEtRe+G/Lle8VBXBfavOaC8kZXIvtLmhD23oXIIf2uVLMmcZ2wPGqH8lBmK7vL
         AY1NHX8dWnvt6o087xOjBVsUShLbDEmpAcUtO7t/MKvTQuAUmiZb3iKJlijAtURhFYY1
         qgadmGql8zu88iaRorHEOeGDnfie4ZB+6ry8lVw0DDNwtOFbofefnWIXPbuGx5lEJU0D
         30Y2q7/UrdhjmZ3Y6O7ydBBWduN0lIeW8UxvnOm43oApATYAwJV/i9ShgShe75/idelm
         yilQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature:dkim-signature;
        bh=0Agf2nT4tFg1h+MDAAuTe8M943LMb7e69XEsjVwZpUI=;
        b=Rd6fvU18PwejxYei/4j5ErXEnYyXc45etDhlY/oZuWAJFUw3+8Hr+A0338xyXgkdcE
         +DRsDq3kjK2OvNVU5Oifam8t7s1RJZMAj46tN7zC5J68Ds47zu3V/VmmpYOjHkX3KP3O
         DoFNNqWqYm+4G/+6Fd9cbdh2484m4MJJbW0fnQPeAJ09KoQOueIJTJSYp8RdGqJF5Jhv
         A8MsJ5ow3/9fGj6y0bpqWOzifatMWnjlFSg7PGOCyHFwq3UG030G04FjpTTdzA69dWrL
         ulNI3zGzymkOzmfXQmZlt+hTmxXW9WfAVBQbpOZ3U5ctl9VV4I5By8EBtMYoDzgfAHJj
         fFlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b="yC/yBoFs";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=l2h7Vm4M;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id c62si81989pga.1.2021.10.10.09.05.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Oct 2021 09:05:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19AB0woE015956;
	Sun, 10 Oct 2021 16:05:14 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by mx0b-00069f02.pphosted.com with ESMTP id 3bkxxa8dj3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sun, 10 Oct 2021 16:05:13 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 19AG4wXn048399;
	Sun, 10 Oct 2021 16:05:12 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2176.outbound.protection.outlook.com [104.47.59.176])
	by userp3020.oracle.com with ESMTP id 3bkyv74ymr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sun, 10 Oct 2021 16:05:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Aac72IXZ1Z+Pnaf6hf5wH6hkEYRwy6ACd25Oe5aIMDF6MG046xQ55Ivse+pQ743dfZAswuZppPaA8L8QfkbZWmmhjFunK2o662Xx5Y6AdWNuBmfjziEpwh64w/HE4UH9HYd8x9PhprgSJfIcOBMrv5wJm355/CnhF5aOAmL4AXgKC21BHJWlxB13z9yKr6IXFVlmV8Kfmu1n4t34TZwI9EbNnyhwUlDX/EFX0b4EsFAR1r5wu7UBV7QrH+dz1GnKsPzYke4yxIWRMxEO1Oy90O+D69QuqteGEfbvxqY+0QdKUbR5vD326G3DV9utl8U5AXT8p5rTBgp/MFaAjO1d5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Agf2nT4tFg1h+MDAAuTe8M943LMb7e69XEsjVwZpUI=;
 b=af/POlDApHMv0ksulux35BxXCbLZmgb68HFx9c/GF997xk36dhyiIeGu8hAUp09lkFsIzFY+9EVxJpr9cU44YpqmPFDxP83bXoTmjPdxnBfBIBv9V2a9L3XrzQNVpXopFGyZPYUAR1siMztayyS6Pq/AWhJPwWervat15f0fEps5dSor7JauDzGMTDwMZwUn1VlXy8zOAtP2acIxxqL6MWpUy7Z31qFa9jWLdq0svEKBVYPU8FyLwAkVGu1BdPWm36UNNnY2Kg5GiOslHgvCRbXj8yKNnmZVGepTdv5RJaxBrxItTkgk+Unt6nrWddDrk9oxPiSs7yf+pZNFZyxRGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 DM6PR10MB3625.namprd10.prod.outlook.com (2603:10b6:5:152::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4587.25; Sun, 10 Oct 2021 16:05:09 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::195:7e6b:efcc:f531]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::195:7e6b:efcc:f531%5]) with mapi id 15.20.4587.025; Sun, 10 Oct 2021
 16:05:09 +0000
Subject: Re: [PATCH] iscsi_tcp: fix the NULL pointer dereference
To: Li Feng <fengli@smartx.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        "James E.J. Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        "open list:ISCSI" <open-iscsi@googlegroups.com>,
        "open list:ISCSI" <linux-scsi@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        Gulam Mohamed <gulam.mohamed@oracle.com>
References: <20211010071947.2002025-1-fengli@smartx.com>
From: michael.christie@oracle.com
Message-ID: <95db5f3d-99dd-ddbb-ea44-8cd37d92ce0f@oracle.com>
Date: Sun, 10 Oct 2021 11:05:07 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.14.0
In-Reply-To: <20211010071947.2002025-1-fengli@smartx.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-ClientProxiedBy: DM5PR16CA0027.namprd16.prod.outlook.com
 (2603:10b6:4:15::13) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
Received: from [20.15.0.19] (73.88.28.6) by DM5PR16CA0027.namprd16.prod.outlook.com (2603:10b6:4:15::13) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.18 via Frontend Transport; Sun, 10 Oct 2021 16:05:08 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a3396e30-f132-451e-64d7-08d98c07bb9d
X-MS-TrafficTypeDiagnostic: DM6PR10MB3625:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR10MB36255F7B25DA4E689698E049F1B49@DM6PR10MB3625.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:240;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HOkGM8T5jhjTL0gF8OCd4v9pvYYauzngpR/uqyoIZk/boQNuSBYI+HJBxy57wRUBnoF+KOWNSMUfv5PGCsYMh+TnYfMrLOLhWzjq9rUa0ip5Y1IJIeSt//TQngdn+EqNTRtaL2SCk/M1tlTegak/iKFa6i+yPn8Gbt0MPJ5OW954bV4/FkZaFHDMQtUTLaxJPpt+GLllCcjt+vCTdgPR5QGyzodberNHWMILI2EPMSecRwFzvmcGmDsmYbPtN/cRPy+widCF768WkVq2Q5dPzALWZum1D0gH997tddwx6wT/yP2yFquIjyd0cRuWaYHZje9uuwBga1QTjGjPwE3REnzPtzvhsPfXoxX20VUU+zI84MRQRKgYu2TKxHl0qbv0zPxrfWkkj83ysn0qyJh+jtvH+Zl7tkMRB/7QkYcn4H2ImC5BMu7UtEirwXdwjXAzSDNY2ClpZJT1wMWi22iJBTp6m6TC8PNNByf/SFFw9z4eRLfk/NBUAly1kMIEfSEG4xe6g5RuIPV5O9HAoenKm4tAZWrE4oYQRAUOA/0QIhHs+UhiRzrjZNp1BBr/mgvqhkg1ciRk6DZFF1kX6OrKOBgsoFkdasvUDzmV/0ks38dJYHNr1leuIddydymY+FFkZFK4iyAPmoxseP0uQOmXR9tjMsb1qD32z/UKq8+tHZOENm0ysrGQT7pgdq7m5525VqAf0kZdwMPifXYh39lmyIZKwyxSLt04RaWKcAGxhwc=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(66946007)(66476007)(31686004)(8676002)(186003)(86362001)(5660300002)(316002)(26005)(53546011)(110136005)(8936002)(36756003)(31696002)(66556008)(2616005)(6706004)(38100700002)(9686003)(508600001)(16576012)(83380400001)(6486002)(2906002)(956004)(78286007)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a0JSWjJHWTUrU21XcG9mbWNtNjNITVBnMmI4ODJxQ1lOVlVXT1FoeWlaTlJ3?=
 =?utf-8?B?d3dyNFBzSERsZ2pHZlVTSkRLYmVUbDhleXY5S2p3NmMvMmNNR2dzOTJaeDVX?=
 =?utf-8?B?bFZ0NVQwUUxQdDNON2tYWFErRFoxSnYxQWx3S0IzbTFUcjYzbzNsUnJXd3dv?=
 =?utf-8?B?dldIMzFIWUplbGduR28rdFJoR1NRK0NJQk9RTmxZNUdXOEZSQ0MxTWtSUXFl?=
 =?utf-8?B?NitESkEwODFITVUwZitBM1djRGR1VVBKVGVkS0pIbGhjcXFwdWRTZzZ4bnVs?=
 =?utf-8?B?Vi91R0pnSWQ5SXl3dDE3TUxTVUpuRFZVeSs4SytlUmVLenlkMGNwSHJHK0Qx?=
 =?utf-8?B?aW44NWRXem9wT1hDWUtCVjNQZDhlcEZxeEdsOHhxbFArcm1VekJLNy95ZmtF?=
 =?utf-8?B?akJqbTQ1aUQ1NnlZWHVQRm1vV0RxL3hoS0dwdnpZVStSSjFKZTBuM083RERk?=
 =?utf-8?B?YjV6OGd3OTJDa3h6YjdseEprcWFZQ1pqZlc5c0RaTk9VU0F6enRTZkZWSnEv?=
 =?utf-8?B?ZHR5KzVTUjA0TllSYktISGhBNUhKQ0MrL0RpT0NSWHV3bWxPZHorbU9sK1ZK?=
 =?utf-8?B?TzByRWREajh0OG1QTUdaU3VDbXhDSjZUdmFCVTZYOFhwR1BobkdHUy9oNFYw?=
 =?utf-8?B?dHRUSnZFbm9YOGxhelVWMm53d3RoK0UxcElMM2Zwa1RlckUwUlV3bFdTcit0?=
 =?utf-8?B?cXFJbjZtVFZic3VlVGdSUHdWNnZBZ290RDd4cno3eXFjYi9PNmpmcVVsN05S?=
 =?utf-8?B?NjZ5SitCa2dJY3gxOWt3bzNsZldabDczS3N6bFJabGFHRDQ3OWJCdjdYUVFu?=
 =?utf-8?B?SXB1VlVhSldibXFhdXV3cGFrOG1ucGRsa1lJR2R0WW54b3MyZ1g5UWErQys5?=
 =?utf-8?B?Z1QvdndGT2dSL0hIK2xRUzZtZ21vU3hQNzhjWlNKb0JDb3hZa09hWHhDYzRE?=
 =?utf-8?B?UUhYRHd1dFV2ZTlsUVp4OHEvN09nQTMvd1VnbEI5UHQ4REhxaENGekRNUUpm?=
 =?utf-8?B?RzlweGhxVlpYNlpDS1JGalNqVnNDNktpQlBXanNZaXpMOWpLS3dqQlJVK0tH?=
 =?utf-8?B?UG1lR1E4U21ORVJvczMvRG1KUDcrMmxoeEJENTdBNUR6bERVMURvKzJ1eVky?=
 =?utf-8?B?YURXeUtzRS9RZ0lqakJrRkZ4QU1mVEJWZ3p0YTJzS0o0ZHlYUVd5WnlxanRE?=
 =?utf-8?B?c0RYNGhJeDRNSGNXcmpJemM0eXVxNVJTMkc4eVlsZFJMdUhiRFYwV0Q0TkVz?=
 =?utf-8?B?K1RBVTNsc2dkbjk5TmZTMGwybzg5UUlpR0p2a1JPY0VlTlhFNHZRN2Naa0Rk?=
 =?utf-8?B?bHlWWGdqODk2QnViWUhMS0ZMbFRRN3haU21rdzMzY2NBN09jb1BhdGIzbWFo?=
 =?utf-8?B?OUc5M1F0ZStRcWJmMW5OOUpOTFNuMmk4TWNiMThhTE9uVDZ4cEtUY29hS3B5?=
 =?utf-8?B?eEJLSW1mcmVRUUU5aHBHV3dabUQxaHEzdkc3L0R2WExKNVYyTGNHL3R0Nnhz?=
 =?utf-8?B?QmdhcmpoQ2xDclJ4WmtlTk1EWU9qemRVK29RTGVCN2FtZ3JaMzA3OFZiNEpr?=
 =?utf-8?B?Q1o0TkJadW1ETzZtU3pnZWxmaWZRenV1ZHdxaXFpeUphNVlTc2tOa2dTSkpw?=
 =?utf-8?B?cjF3cC9PYTV2SDAvaC9CazhEUElJM09Saldoc21tQnpWRXFQaUs1VWdzaEhM?=
 =?utf-8?B?M1JBTmw4NHhIOG96endnWmh4YVZLNnpSRVFaOWk5ZXplTGRhN2JjMUhmbTNy?=
 =?utf-8?Q?5yJvkYdlFhpM6X3EmZxLqa8LnuQzpGYlfNnrPwB?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3396e30-f132-451e-64d7-08d98c07bb9d
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2021 16:05:09.1699
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o5Gh0DxwVcV5/+oOjGF5oYvf1Vr7G3Xe9VxeriRerKYZexvnDOxdw2wV+BNLSf/VgW36qA3UgS+M3Anf1C1i12OW6HOnXVRUSAi794kYs7Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR10MB3625
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10133 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 adultscore=0 bulkscore=0 mlxscore=0 spamscore=0 mlxlogscore=999
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110100112
X-Proofpoint-GUID: UV7U-eW63MNWxMlcdrnO3gFOvr2AadYL
X-Proofpoint-ORIG-GUID: UV7U-eW63MNWxMlcdrnO3gFOvr2AadYL
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b="yC/yBoFs";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=l2h7Vm4M;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
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

On 10/10/21 2:19 AM, Li Feng wrote:
>  drivers/scsi/iscsi_tcp.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> index 1bc37593c88f..2ec1405d272d 100644
> --- a/drivers/scsi/iscsi_tcp.c
> +++ b/drivers/scsi/iscsi_tcp.c
> @@ -724,6 +724,8 @@ static int iscsi_sw_tcp_conn_set_param(struct iscsi_cls_conn *cls_conn,
>  		break;
>  	case ISCSI_PARAM_DATADGST_EN:
>  		iscsi_set_param(cls_conn, param, buf, buflen);
> +		if (!tcp_sw_conn || !tcp_sw_conn->sock)
> +			return -ENOTCONN;
>  		tcp_sw_conn->sendpage = conn->datadgst_en ?
>  			sock_no_sendpage : tcp_sw_conn->sock->ops->sendpage;
>  		break;
> 

Hi,

Thanks for the patch. This was supposed to be fixed in:

commit 9e67600ed6b8565da4b85698ec659b5879a6c1c6
Author: Gulam Mohamed <gulam.mohamed@oracle.com>
Date:   Thu Mar 25 09:32:48 2021 +0000

    scsi: iscsi: Fix race condition between login and sync thread

because it was not supposed to allow set_param to be called on
an unbound connection. However, it looks like there was a mistake in
the patch:

                err = transport->set_param(conn, ev->u.set_param.param,
                                           data, ev->u.set_param.len);
+               if ((conn->state == ISCSI_CONN_BOUND) ||
+                       (conn->state == ISCSI_CONN_UP)) {
+                       err = transport->set_param(conn, ev->u.set_param.param,
+                                       data, ev->u.set_param.len);
+               } else {
+                       return -ENOTCONN;
+               }


and that first set_param call was supposed to be deleted and
replaced with the one that was added in the conn->state check.

We should just need a patch to remove that first set_param call.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/95db5f3d-99dd-ddbb-ea44-8cd37d92ce0f%40oracle.com.
