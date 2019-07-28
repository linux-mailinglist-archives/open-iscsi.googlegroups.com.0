Return-Path: <open-iscsi+bncBD54HHNYIIIJRGPY5ECRUBCH6Q56C@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id D14E0781A0
	for <lists+open-iscsi@lfdr.de>; Sun, 28 Jul 2019 22:59:05 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id x18sf33085191otp.9
        for <lists+open-iscsi@lfdr.de>; Sun, 28 Jul 2019 13:59:05 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1564347544; cv=pass;
        d=google.com; s=arc-20160816;
        b=mbpZxC2ssUXkhfcY1AiXaPn9oUz1HJw4i3ohsSMcuO+L8XGf0h025cmHiYouGgLdmD
         72ZO145BA0YwMEab4pf/AnaEHhuvLL3MvXMAN4FO0pky6XFvF1reZvKMDMq661E6NH1m
         TEvbvKJH3Qn4NOXcD0VF6UgbmFZ7LXJZlSZFWvqL3y+dM/aOe6BR510C0kaqH028x4e/
         pntwelx+p++ckirm0SjhoS/aeKCpDmlIfyGdy21HUsXeZ/yhoq1jGAEpxif6YXWECg/F
         ahTp9xb/yp3f5YzAroQaAXInm44ArIyglWuZ2Qsadxlu8xRXTAKTmZTGCk5GwynL6fXm
         7I7w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=SSxy4NPLmdj1LxMjh6i3mi7617blhhYS43rSW08EdnM=;
        b=sPUreI7THBkd8S+/KvlzPeWjecJaRw8u++I+l47EQkyuPt1BGzGK1Wi/YeomAJo+zf
         3hkg3nT9B378z03M+EEcN3N/tpIxmJVo8/EypFo6TTHX3Ay6uuMGpMrUSjEuGMgz2EwZ
         VJRjl+E9utF/++3X7Lx9Sfiy/JfywXOB6Xc56/AzQG89sIZRlipDeAqQZeRuLPAtod2e
         NtLgaJ4/uqmPXtSF9naTG2ngAz9h41yNlWCOEeYH3IFZGnpwfd+Om06Eg4oH+0q0DAN3
         XnE8hu4uk4W8e+cWFafjAF6648+QFd/1fuKQ1dhaI3CYXPhfQX4Mn/O6Ku8swSJNvJ+Y
         510A==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 15.124.64.67 as permitted sender) smtp.mailfrom=LDuncan@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SSxy4NPLmdj1LxMjh6i3mi7617blhhYS43rSW08EdnM=;
        b=VxlqBsT75gYomlBzAb3GZPVsA6Lmud3Fz/1eyOG8QcuBXphUoMvqQ+2DYTGZuVqFLG
         84aHO7XYpHNMjQG2i+n8GQ1DGDUutScUe77blfSKbngjChMcYEZJw1c9OV/oR+i9PZow
         K8LYrKFEVsxE1kdWib2s8K8pPWWXZx1eT7YD4RBK/5mMAb+dCwMTbVCtodyCHb/bHQPY
         8MmHB3zvMfOfLF+MDaSbns8eGo5n80q5+JrzYsXvI5IKVh4EuOPUQZtCBv17XW5kJejf
         SrZ9BNtQ1R9WeP3cFtfPrLKYLNkn3hqyQn4drJL5ff5/X97t5VSGWh6SVAnziDUAUVK3
         vmVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SSxy4NPLmdj1LxMjh6i3mi7617blhhYS43rSW08EdnM=;
        b=uE6lw4NHhHcQVF0IzqienAP5AB6u8JHl9Tl02vVL4SHEIwU1yzNjoTbvfMEkRu3aRR
         I2o/DRwivlyIlFE3gOGVD0pdwC0s6aLNcXc1uGqSWiYmTtEbE4qUyNH4r8IKlE1qwvJv
         UUKus3D3/XVDSPFgCCaSt8bLc94A8BDZeS//fBYHE71N7iOp2Onr1cGPWFi4Rdw8Zyle
         7Ij4JLkdGmFTjUm7kh7T1No9x2RjPhR4XKKMHgaHmH3Uf83STsSBzCHi6fxbiU1UqDX5
         391pXfmwh1EIzEKHea4YmnkFv0drNDK3bSKmXsJfcPxc9saVETwBCfwMxXgZKXtshkhO
         DGXQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXaTg3+P187evC1ShC0A936JYyhFsdOzAZnXS9rV01sMSBKYF2X
	bhTF1bp5McoRUD71RtKNWmY=
X-Google-Smtp-Source: APXvYqzJ+Y5iT7Cc5X3+8qpv8kfN5R/EoaVf5vqUbBci6j4aDASQHGtu7pzMFskt20tu/UZmJumsjA==
X-Received: by 2002:a9d:7b43:: with SMTP id f3mr24742141oto.337.1564347544539;
        Sun, 28 Jul 2019 13:59:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:12c3:: with SMTP id g61ls2270115otg.16.gmail; Sun, 28
 Jul 2019 13:59:04 -0700 (PDT)
X-Received: by 2002:a9d:7248:: with SMTP id a8mr14864770otk.363.1564347544182;
        Sun, 28 Jul 2019 13:59:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564347544; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q4/Bu9vvDd+y404+bzx0rMUX54CnC0DhYeVVfNckJ5VsogLhUU2JBPFOdiJ0d522io
         NW3ESyNh/WFu8xVQfUPB3xyJUiaYD+FXPmZ33leqEGN22Q9jhcizsYCsJWTaPcGFAy07
         qNdy8Wm+hwImO6joSK+XWg2j8LLYDB3xSQEqAntv+ypYzXWXz4eo8lv5Rcu/y7VtJRqT
         yfyMo0VZxgQ5stXmjW56WfWebUWXqmTVKfTLKFU0C0iq8pu0MpRnrL2zLQFihWAzfRkB
         JN7P433MfTrUuW6LrOj87glf7A80+wlhhDYy72fFP6pnHKhg0E8hhdu34vs4cjZwvkcy
         m/Vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=nIxfoxOMIHuX0nmE4fJFCs6+tni7RPOfgy1N0V9lcu0=;
        b=pXvidZJw/eP5QkOEdVqS/OZhOj8Mhb+mzpxEreh/OtLoz4t3K20VbYAsDMKLk1edcl
         16QMcG8iUH/+/Gs6QyBa5cT6p2h/LyF+BiiSKyCN4MmzQ3pxu4DQx4eONPXcUqrBwciN
         obm4VgbehN98aBMKRFlSKZidPdtK8i22z5B1JhE4H+/0OFyHHC0fLZQFasPRHpoboEU3
         M5Fs3NnCgpyLWh5c/pxbWQjJsOKyxabS6aD5oTuNGu7JWdjA28fTt1GNx8a1E4Zy9Ouc
         2ekZtPSXFp4YUlgweFbAtHRv2Q4Ibvo/fyZNc6vSowzj/abgjtJ6LRn6Xj5908Ww78oY
         yZ9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 15.124.64.67 as permitted sender) smtp.mailfrom=LDuncan@suse.com
Received: from m9a0002g.houston.softwaregrp.com (m9a0002g.houston.softwaregrp.com. [15.124.64.67])
        by gmr-mx.google.com with ESMTPS id p6si3078621otk.5.2019.07.28.13.58.48
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Jul 2019 13:59:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 15.124.64.67 as permitted sender) client-ip=15.124.64.67;
Received: FROM m9a0002g.houston.softwaregrp.com (15.121.0.190) BY m9a0002g.houston.softwaregrp.com WITH ESMTP;
 Sun, 28 Jul 2019 20:58:56 +0000
Received: from M4W0334.microfocus.com (2002:f78:1192::f78:1192) by
 M9W0067.microfocus.com (2002:f79:be::f79:be) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Sun, 28 Jul 2019 20:54:34 +0000
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (15.124.8.14) by
 M4W0334.microfocus.com (15.120.17.146) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Sun, 28 Jul 2019 20:54:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QTjyrFVcAOkweU1TmZt3XNaOcef737/jspywPhHBYNQ8r4wACMok2PHcu5ugVhQkm3QWVgcRBDmOQlF1AOSZh0yKFHXj2SiAlERr1vgsCB0KbAwJdg32ixvh28poRcR3HilmTsWqSQs9YwKs+xyZVXX1g/yLb5I7YQzfzImTdO5cTLsGWogATkwxkvUP2GG3/fX8p4AyhqXxyt2R8yNRDhfI+En2QCNYdzdI2prXPU1hcc0aQ0RIa/haeo49Nfq9vrqABiri2X9VzLFZEqOctVkypIzDTnsCNz6QSFJl8HO7Qyh4CnjGK6UeZS8dRFIgm76D8XFGTznx+Ieiv/60EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nIxfoxOMIHuX0nmE4fJFCs6+tni7RPOfgy1N0V9lcu0=;
 b=UXYi8KOQomkXs6nQYXa6cGUnqFtju8R34eqaIuoiEjFNLWMU13Ks7PaDCPFQDctBWgcbYAQXzl1UdwxcME4SSLQBMg4cnhSNQh/AeJcyRvLhWSiYmBVqrnRljMfK5BAuIGhnM/P6gKfk6XsLmoJF4bbEl58nR2WhrqNwho5A/y8F8q21wcifujX93Bb0UvICK7Bez/BxnjBb2E9m8QPaKzPbR2IhhFWWjloNZooQFCII7OgDPK3ras8W5ofAfg5kWlQK4mQ2tXdg+Rcr6Pr4vldjHm3AMQwuLuY4UyJgsjhNrDlCrEAFhrQ8NHSrYm3FGP2H9NmT5NHf6ZTk59aD8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=suse.com;dmarc=pass action=none header.from=suse.com;dkim=pass
 header.d=suse.com;arc=none
Received: from BN6PR18MB1172.namprd18.prod.outlook.com (10.172.207.147) by
 BN6PR18MB1331.namprd18.prod.outlook.com (10.175.192.8) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Sun, 28 Jul 2019 20:54:32 +0000
Received: from BN6PR18MB1172.namprd18.prod.outlook.com
 ([fe80::38f3:d27c:6480:d073]) by BN6PR18MB1172.namprd18.prod.outlook.com
 ([fe80::38f3:d27c:6480:d073%3]) with mapi id 15.20.2115.005; Sun, 28 Jul 2019
 20:54:32 +0000
From: Lee Duncan <LDuncan@suse.com>
To: Wang Xiayang <xywang.sjtu@sjtu.edu.cn>
CC: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
	"cleech@redhat.com" <cleech@redhat.com>
Subject: Re: [PATCH] scsi: use kzfree to free password
Thread-Topic: [PATCH] scsi: use kzfree to free password
Thread-Index: AQHVRGe6tySHaM1So0a1FURM54pPoKbghF4A
Date: Sun, 28 Jul 2019 20:54:32 +0000
Message-ID: <4d2430d7-8eec-2d52-263e-41bf468598e0@suse.com>
References: <20190727103958.2260-1-xywang.sjtu@sjtu.edu.cn>
In-Reply-To: <20190727103958.2260-1-xywang.sjtu@sjtu.edu.cn>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: DB6PR0202CA0001.eurprd02.prod.outlook.com
 (2603:10a6:4:29::11) To BN6PR18MB1172.namprd18.prod.outlook.com
 (2603:10b6:404:eb::19)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [73.25.22.216]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 52ecc7b1-c6cc-42d3-131b-08d7139dca48
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:BN6PR18MB1331;
x-ms-traffictypediagnostic: BN6PR18MB1331:
x-microsoft-antispam-prvs: <BN6PR18MB1331620FC80FBE9DD2AF6E4DDAC20@BN6PR18MB1331.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:126;
x-forefront-prvs: 01128BA907
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(39860400002)(136003)(396003)(366004)(376002)(346002)(189003)(199004)(6512007)(6916009)(80792005)(446003)(6436002)(14444005)(256004)(36756003)(54906003)(305945005)(6486002)(3846002)(6116002)(2906002)(86362001)(486006)(476003)(2616005)(478600001)(53936002)(11346002)(71200400001)(71190400001)(31696002)(229853002)(14454004)(66066001)(316002)(4744005)(186003)(26005)(81166006)(81156014)(8676002)(53546011)(76176011)(386003)(5660300002)(25786009)(7736002)(4326008)(6246003)(2171002)(99286004)(52116002)(68736007)(66476007)(66946007)(64756008)(102836004)(66446008)(66556008)(8936002)(31686004)(6506007);DIR:OUT;SFP:1102;SCL:1;SRVR:BN6PR18MB1331;H:BN6PR18MB1172.namprd18.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +RW80HGF6pi9ESxDBWfQfKVeLndD1HJWfdUgNZGC6W1FO3Xg4U0ety0K2PwvAneNbdDjx2IRGDz2vQmYc14sMbk+J2yyL7oWzGPxwAnlAD7Qx2IddgVSeGuFsrL8cKJAN+ikxqM0HX+QfHZflxftT+0kAGkgZ7nk+7UC4nxxz2nob+5d2HeGOKd3S/HKXv/t39WBxOAE0r1mF+FoWNl//pE37aKMi1XmMDdAqPgDDib+zmBDLlcrw407P8HkJ/VW4LXfqX/NuzQ5lqxvFlpyOchkLLYv0BHIBFtZrig1CTUo3qyJ913W3dBtP5gsMdIJE08BZ1s8DizR5pBp3TE9/H6e7LobxID2ZMunLSq+HxKYxtQJj0AX1nnPbnPn3CxthosCn4LXyfcU2bVkEcdwehshTKP7jihphL87AGSO4gQ=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <9A259CDED3F8C04291A09E11880D8906@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 52ecc7b1-c6cc-42d3-131b-08d7139dca48
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2019 20:54:32.1638
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LDuncan@suse.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR18MB1331
X-OriginatorOrg: suse.com
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       arc=pass (i=1
 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass
 fromdomain=suse.com);       spf=pass (google.com: domain of lduncan@suse.com
 designates 15.124.64.67 as permitted sender) smtp.mailfrom=LDuncan@suse.com
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

On 7/27/19 3:39 AM, Wang Xiayang wrote:

> Similar to commit 34bca9bbe7a8 ("cifs: Use kzfree() to free password"),
> password strings allocated for CHAP should be zero-ed before freed.
>
> Signed-off-by: Wang Xiayang <xywang.sjtu@sjtu.edu.cn>
> ---
>  drivers/scsi/libiscsi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
> index ebd47c0cf9e9..67d66e6dbdb0 100644
> --- a/drivers/scsi/libiscsi.c
> +++ b/drivers/scsi/libiscsi.c
> @@ -2854,8 +2854,8 @@ void iscsi_session_teardown(struct iscsi_cls_session *cls_session)
>  
>  	iscsi_remove_session(cls_session);
>  
> -	kfree(session->password);
> -	kfree(session->password_in);
> +	kzfree(session->password);
> +	kzfree(session->password_in);
>  	kfree(session->username);
>  	kfree(session->username_in);
>  	kfree(session->targetname);

Reviewed-by: Lee Duncan <lduncan@suse.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/4d2430d7-8eec-2d52-263e-41bf468598e0%40suse.com.
