Return-Path: <open-iscsi+bncBAABBTO54OCQMGQEA2EUK7Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id AF28939A3E0
	for <lists+open-iscsi@lfdr.de>; Thu,  3 Jun 2021 17:01:36 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id l123-20020acad4810000b02901f1fb44dca7sf614829oig.15
        for <lists+open-iscsi@lfdr.de>; Thu, 03 Jun 2021 08:01:36 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1622732495; cv=pass;
        d=google.com; s=arc-20160816;
        b=XCR17lbUPQEU9CUHos6gaRHEhz9xQ0KwIJsku7KUQVKR+4ILU2ohBUaGHgQGkc0F2h
         tb7qA1cra3aaUwK1weTfa27+BAQ4IP0IDluOV+HLQpk64vOktx8VrVsI75uqejfAKLa8
         I0V+epsf2tgt0Sy6Kfszs3FjQgWNfH3KMEgU5AxslyNvK0H5ay7yMLRwTzRJUtnGpLVA
         DRk4MHT7/dzgYcxbNEOYSlZKD6hD5T00wUI2jIa9YnkMbjPKdz6rudw9uKkj8eXuTq4f
         1dgGI7ToNi5kZBBY+ojCiN2SlJuh99xDPUoIuodr2INht3rGnB9wRRKIrHmeV+N1i9sX
         zunA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=hQRnL9/tgEQyz2XHm5o2J+gvExTU33t8QqVDyom70PM=;
        b=og2J/n5oyLuHlVqUbh1kNwLsyVzm6cM0zJjj8TrBiNykXEuuQ7tNAMVJ/+5oA9tuNp
         vZXQaWRnMAh6ISPyUFVsb1FLXHXLbfDzDkOfyL+G4g0ujM9UTZcwFARTWqcOLY+AfBVC
         yPbQEzFHPKeoMQ4Bg98IXW0pP8MT2C/9c1OmdvXlDylYJAxDo3xOIiNrGf0VOe951U6x
         5LBhpkNLrqlsGmvdwS8TcXIpFbnPa2/FfOq2IyuZ5NUOD2hKuruhYByq5skk/63th49i
         nMUDUScw8UIl1WHnoYJWFsj8hZ791B+MiioCeDZsZ2Z/GYNj7YL0JqxsCCfMgT8bYsNt
         9tHw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="rBt4Xj/Z";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=Y2W8YA88;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of anjali.k.kulkarni@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=anjali.k.kulkarni@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=hQRnL9/tgEQyz2XHm5o2J+gvExTU33t8QqVDyom70PM=;
        b=FogmQfGMAzwpMhDDOm/ltU4RNWl6ZHMgK0grL41IYpBaB873Bwx97ZU/qyVw9QkTxj
         fSWZRHcvFla1pHOqVnvMqAU6AT45K6Idha4uP8mbTzJdvoUHQHbh/KJPjHmfBgYvCqXR
         PqQaMQN+046QXk3HioqhHwuA0exi7ePJWiC5n8zDIXCzebRe0aqTD1kTd7Pb81REtFJW
         77C+Q2EbSSLFr61Z/DoDcwZNzenEyelne0Svv2CBvOX94ELLdSX1nVn+Dtb2iJK+PRoT
         7eMR6uDlXCCQt96/7RfdIjj0yu+pPEjywoG30BjwayCaw3bDBvY6Be5RorvTZSJgsczc
         s95A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hQRnL9/tgEQyz2XHm5o2J+gvExTU33t8QqVDyom70PM=;
        b=quq9D2ablUvM0E7oW/7Vv7weC8x+cszz/2M+rMtHryfMaZucvNnjiSu++wkDDghaZz
         cMFqGOoys36j/DkRONmLrQZ+ZcF1uTxFdJyJndc6uu6gS2MNEeiJxor8QAzHLnAsHYKq
         JbUjVByhcwycKNLZn3M9xD02uxxF2DuVKolDGpdAfjDBpvqNDvcyXdNMq3ClPUUfDVK0
         XwoIRJFYqGxCrwP/QjP4id1TMkQa/teBMdiryntEx8lOmIc/1uX+y/sZgUvsd5OfARva
         QqoiI2yUcx8Ny02I8ggP7znLpUOhQrPcYhjRLBrqrrYnXPrmEUv8WcjdgDapqVYTpyBf
         OGrg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533ube8HIwSYJbA1TqofRX+hQN7kj29uRqqE483mcb6X1tX34FWR
	76Awo0prZtw7KjwcZvDqhUM=
X-Google-Smtp-Source: ABdhPJxQCF03uAGSyhsS0w1UXvIkNi/vQ91etVSunfrfhX+BN6+5NbqUQvzve3+2qV9SG4f8ZsqyzQ==
X-Received: by 2002:a05:6830:1196:: with SMTP id u22mr29850331otq.247.1622732493911;
        Thu, 03 Jun 2021 08:01:33 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:4888:: with SMTP id v130ls945757oia.9.gmail; Thu, 03 Jun
 2021 08:01:33 -0700 (PDT)
X-Received: by 2002:a05:6808:1146:: with SMTP id u6mr7703403oiu.130.1622732493569;
        Thu, 03 Jun 2021 08:01:33 -0700 (PDT)
Received: by 2002:aca:4d86:0:b029:1e5:729a:dcfc with SMTP id 5614622812f47-1eedc473d90msb6e;
        Tue, 25 May 2021 12:26:21 -0700 (PDT)
X-Received: by 2002:a17:902:b609:b029:ec:e80d:7ebd with SMTP id b9-20020a170902b609b02900ece80d7ebdmr32479754pls.75.1621970780616;
        Tue, 25 May 2021 12:26:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621970780; cv=pass;
        d=google.com; s=arc-20160816;
        b=MK36Ps881TyRuW6893nzuLtzSy15WXHGq0dv6KsMsGiKdJr9hod252kXRNY6tYsRkO
         a4ywgIX40atIVUxoIymZk9G+HCP82w8RrqBY3CWiMJusVZiaOXTviXMepiux41LlzsjD
         mkL03gaNQMmZSwitP/da8UWFysDemImyLuh8oYSW5TGGqde13xvq9yPPsIts9RrAw3Wx
         Lpj9kiI0wozNhPEbIaEYSsBNS8+V5Y6ZHDjDNI0/ehFDQkIuVAFSJxuJJTslx1ydGKIe
         xdQK5vFGpK3O+Ca+Sik34/kWXc84qMMyT2g/L1n99vgBhGZGlAlnbaYBZGG3ZsXJ6f/y
         lz3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:dkim-signature
         :dkim-signature;
        bh=n2aVge4kxeZBdSTghL663nBFlrK2rKH7jnWeqjErMSo=;
        b=yNxrt1xeGXBSamaKAjrMLHUYW8lZWy11kLaNDjxUIAQfLp0+QT8G2tBBq96bmPRrnK
         sba+84AeTv6IHI5l57RgVvGqt0vxWzercRc80psjtpsHXiQQSfaEegmdVrH9OzG4xLE+
         vxnT1f6ru67rfDcCnbrVFoT0mB67IZFaVctkyiICvz+TdSA6QtLBH9l9h+NtcNayUIFb
         9Dei30rPWsIFri/R+HSjaKMGmVmOhdWV0U3E1U3TIJZwbGxrPuGxEMZEXSpDjmP6mMTr
         0iuyAOLAG8jOnugxpLds4ZevRBL7ttZBDEoEOdqRE40FbSJMkOvraXaB/OYtG9/oVNcM
         geJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="rBt4Xj/Z";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=Y2W8YA88;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of anjali.k.kulkarni@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=anjali.k.kulkarni@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id a10si2657636pgv.3.2021.05.25.12.26.20
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 25 May 2021 12:26:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of anjali.k.kulkarni@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 14PJFdp4124182
	for <open-iscsi@googlegroups.com>; Tue, 25 May 2021 19:26:19 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by aserp2120.oracle.com with ESMTP id 38rne42nck-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <open-iscsi@googlegroups.com>; Tue, 25 May 2021 19:26:19 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 14PJEr5s150853
	for <open-iscsi@googlegroups.com>; Tue, 25 May 2021 19:26:19 GMT
Received: from nam04-mw2-obe.outbound.protection.outlook.com (mail-mw2nam08lp2177.outbound.protection.outlook.com [104.47.73.177])
	by aserp3020.oracle.com with ESMTP id 38rehauxpe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <open-iscsi@googlegroups.com>; Tue, 25 May 2021 19:26:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JKb0WNnawWZPn98hdl6nUsiEEo4+8/vPgIQfJGmmwmzqwBlJjSVSdQg2611eRVJDIzm5s/l1quxsNh7+PSXuxawT82A52hvLvVG3zUaXL4RtCG7QpQxCXiNE6ww7t3ngtlc1y8/7JCuPvMe59oXbUf5t7RUZt/MUaJ5M+Yp7MrpK3peUTpSjhSvbssNNc+ayOgkH11HSFYpLO7WKdVWGa9bBwuHQvHHTJTgir8OWtA1+rBLIilSsEOG54HW8gdTk94aepJ6vfzjx0ogtN7FZroen7R+qp/9C11IjVlivVN9EaXWnLQbN7anaW0FAlKkeK1UkerbLQrFlvCCBAufCPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n2aVge4kxeZBdSTghL663nBFlrK2rKH7jnWeqjErMSo=;
 b=Lhac1FW41IkIWXTk7LUPoxEjZCfRkOGZWTmk9nTX9gX+mCL/AKnKGdwfTtp8qhyqlpaOGGJkIPuh7ThW+rM9sH0jatZ5+8TB/GlFhvYllt0KV0WO2q+plrFzPmz/LVk5M5oxZYLqz5fTeqarNGWP8DnlOA37OU/HOtGkl9dX1xefwpq3gEBFM0ccgdpKndx7NsIW4TfR4lyPJeDU3IFU0OeJQTqZMmlLUzT4JIxSzTlYqu5HIcYSpWtInN6VAipI13iXlsK2UASW2T3pA//+17v6WV/ZPj3HMI3ruM0hHBP5WOaVo4LmKrtKJzsW4p8ETBAIA4nWxj3n4DYDZUcfXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM6PR10MB3850.namprd10.prod.outlook.com (2603:10b6:5:1d1::28)
 by DM5PR10MB1660.namprd10.prod.outlook.com (2603:10b6:4:6::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4150.27; Tue, 25 May 2021 19:26:17 +0000
Received: from DM6PR10MB3850.namprd10.prod.outlook.com
 ([fe80::95fc:d3b0:eb5c:6f5d]) by DM6PR10MB3850.namprd10.prod.outlook.com
 ([fe80::95fc:d3b0:eb5c:6f5d%3]) with mapi id 15.20.4150.027; Tue, 25 May 2021
 19:26:17 +0000
From: Anjali Kulkarni <anjali.k.kulkarni@oracle.com>
To: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>
CC: Anjali Kulkarni <anjali.k.kulkarni@oracle.com>
Subject: Submitting a change
Thread-Topic: Submitting a change
Thread-Index: AQHXUZvVa4xSQsOFTkWdGZEG8V5sXA==
Date: Tue, 25 May 2021 19:26:17 +0000
Message-ID: <06EC4AC0-4E03-4D2D-A23C-FDE7377BA3A0@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2601:647:5680:47d0:95b9:1f30:855f:f48c]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d7488fcd-84fe-4ec0-a3e7-08d91fb2f7ce
x-ms-traffictypediagnostic: DM5PR10MB1660:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR10MB166067B76CD50FDA3EF1EB2EC4259@DM5PR10MB1660.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZYnveKhTzsf1+W6xNcZfing9Z1n9tmBTTpErV0C58BAfAr+TaSX7aeCMOoU2HW/QCRfDjVxII+wTlr1ULKEiaRRGSxDzQdqWkZIdBVG88DDDWajMjtPQLHQiQkjW1srEqjEKGWcCUFYfaRRT5CyApLwSy8aBdydQcK3NT9/GY046IWYXP1O5LxJfZ1fg9uuqo45MTFkAPMbZHa0Hd031JauENDOqhxiinU3nRUX8ShYQZ5QU1y4Ws1JqbOONcQBYxyc2YNPzZmUKhLeeEOsqttVZhH7IZmdNSkZF86cQqEqOEuEHQZiAgZ2Ai0lO79fIrrgUzb8lG5WxtBK8mZM33EmZLXTnGAAt+CDYsZ1C3WRfBPkbk0M6xdO/lHPM3fgpkxzzrDAKPdQkdOoUFcRbP5GL+IntXLlf34bMaYG9Vg21VKjxRs/5j5+Uhxfw3cHE/egncmynBhIDKoYIwJZaYSV6xRORE8kEVSN0ZTidNgL2kvxa0PqkOHEU8slLP4hmVbT1vNepb8m807GhoSOxe3IbXoHjzsGrsmXP+gRgSx/Y3JXdq1KLFz0A3B8WP9PsjKPyOKSEAainXpt8MjXQdVDOzQ35ScrY21VLjle5eMiJd40RJ6/Nr9a4OspUaimOt2utskwcWvbdUZDzM3rw6omx5XYHrWCV/lyQQOQA4keqPAezJjx3jtWDRKp4gF1p2NCocucXOIqroP6+n1mOaIRkYBIXvDuVmaAc1WhjRP23A7wBloSeVlzpiRqGuWany5jLQu4N39gkFh1m5BrqbA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB3850.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(376002)(396003)(366004)(136003)(39860400002)(558084003)(86362001)(2616005)(6916009)(64756008)(186003)(38100700002)(122000001)(8936002)(66946007)(36756003)(6506007)(66446008)(33656002)(7116003)(66556008)(4326008)(6512007)(66476007)(8676002)(966005)(6486002)(478600001)(107886003)(5660300002)(3480700007)(76116006)(2906002)(316002)(166002)(91956017)(71200400001)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?3ObfSyIORdkJeGvofkWAkfO24F3fFo/eY11y3Ymy+ECTaybScImKlBoEw9t1?=
 =?us-ascii?Q?zS/IHUMJOPMx1Xwd/I5AlMcObAeIBOpIGJio/87Z9C3c63e455GFqN66//pi?=
 =?us-ascii?Q?sC3MIqBgeLCjSwxk4TwQYG0/SNdA1eVbTpPTQX+vwYK0bHkV8WaRWSg8KV7a?=
 =?us-ascii?Q?delekYmvARduSwHyPK9mMTDWcmMk6V9rZIlr9k3Wc3hMgqTxT0BoUxQYbRY6?=
 =?us-ascii?Q?FnL4PJ3Pag6+YKpPKbpP0N0dIM/hZ/AtSHZnTMNF27pMh2cIX/5CQ58uOElZ?=
 =?us-ascii?Q?8HfyzivF7nzd9GKTqPwrs2G+rOmsmyXN6OvAd6T+ZuoM7agvkzu6IFUtFNid?=
 =?us-ascii?Q?j2iA6DWISPWdZixmnj0Eqmjr+x1+hhddcYneUQBoB4pwh+F/N9yzT+x56GLu?=
 =?us-ascii?Q?fWkKfvhfMVju5ih5Lih93k/cPOm5hS9BV9j5HqI9c1YBBRd1OcrzlHTULmHd?=
 =?us-ascii?Q?UvI6LbepbzDus9B8uW6N492a7llT1aeA0JCWfOanFnKow1emNMkal5WFS/aT?=
 =?us-ascii?Q?1lnIw1R6mdQCPCekwkvr0dF1JofpTsMPDZsObeSyO3pLH2TGi7zdoJke/SAh?=
 =?us-ascii?Q?98J3ewwBhsRw9rtPnH+4B1691UZJ5CDsjYIrXe5Ze4+TVvZDbBQt9KGdN0uI?=
 =?us-ascii?Q?w5Q6o8wMTWjIjjk1zSw9akaFTJvEMuiLBn5557NREaKDNsyjc4JLbYQ55Tj+?=
 =?us-ascii?Q?eMvWts1f6OzAJJKIgdK5rwtpH1LiSmg2mphKwLTBkFZLpzZ93Sltn2w7CeVN?=
 =?us-ascii?Q?KW/VovstYobb/M6oHZv/2vy/lGF/o12PQrCFu9sae4MEz2hoPnZ/UMzz42b8?=
 =?us-ascii?Q?eftW3V3Nlg9rDPXub2wtKFhfCwKgS2tRPXGAT9NIplzlYAu0N86/occZsBiD?=
 =?us-ascii?Q?1LV9BWLoUXjSynzzzXujSHAwIiO7BePP7YOpUH/Nz6BasF6+mnOgG1l8zw/W?=
 =?us-ascii?Q?CFzGOj4Vn/swVRrjMgAZqayFpLw55WKRIeKHYG4b/ySxBPiAB6jWp5G3Q3tE?=
 =?us-ascii?Q?Hn2vjMAYwwxI0KtBMR1HPhKFt02LRuFx9D9ZfbrDAMAEeY3205uBsQFkgkzY?=
 =?us-ascii?Q?q9LSeyLOiC0wgOo9hcMqSoebK0t3VfmzIzvkEeYsW5XmHVH3mNuCXxgIUScf?=
 =?us-ascii?Q?0pLn4Qw1bsHxdNw/EPUcvGEWztAe7ExTUws61/QLb7I9v5/dTuWh8uzXqrKr?=
 =?us-ascii?Q?7wGli6UgHWJAzNK+vFnjAObreAxocnPzOH5jvjoOYHiXs739pynPQWTD0sml?=
 =?us-ascii?Q?7qIg+fXRg7Dv0HbqPNKOpzy9GhYZQYsxxNit3srTCy11hsjw1qfnvi5qZtzs?=
 =?us-ascii?Q?tkZ8WlGQ5T4ruiY7WaC/uYlIskZnqSvFp7lCC44uyH2Vv+Ij4V6xa6Dzasdg?=
 =?us-ascii?Q?lIn2NnJOi9TeRbABXC5kHPga0mp6?=
Content-Type: multipart/alternative;
	boundary="_000_06EC4AC04E034D2DA23CFDE7377BA3A0oraclecom_"
MIME-Version: 1.0
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB3850.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7488fcd-84fe-4ec0-a3e7-08d91fb2f7ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2021 19:26:17.0491
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gBvK57cfUWMzqNbFInpqIde64VXHKS/ZNLr3au+raC6ABUzuC5TUctCh2QhJCeOkh5oHyP2nVw50hZ4hPkLfPuxNr71f23ZBiSWTnd+DR1U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR10MB1660
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9995 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 spamscore=0 adultscore=0
 mlxscore=0 mlxlogscore=495 malwarescore=0 phishscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2105250118
X-Proofpoint-ORIG-GUID: CbEUkfapXQ-qB_UjTJcPsuMSzuKs0Kzh
X-Proofpoint-GUID: CbEUkfapXQ-qB_UjTJcPsuMSzuKs0Kzh
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9995 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 bulkscore=0 phishscore=0
 mlxlogscore=739 spamscore=0 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 adultscore=0 clxscore=1011
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105250118
X-Original-Sender: anjali.k.kulkarni@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b="rBt4Xj/Z";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=Y2W8YA88;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of anjali.k.kulkarni@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=anjali.k.kulkarni@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

--_000_06EC4AC04E034D2DA23CFDE7377BA3A0oraclecom_
Content-Type: text/plain; charset="UTF-8"

Hi,
I am interested in submitting a change upstream for open-iscsi. How can I go about doing this?
Also, is the iscsi utils on the fall. Gothic location, used on redhat as well?
https://github.com/open-iscsi/open-iscsi

Thanks
Anjali

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/06EC4AC0-4E03-4D2D-A23C-FDE7377BA3A0%40oracle.com.

--_000_06EC4AC04E034D2DA23CFDE7377BA3A0oraclecom_
Content-Type: text/html; charset="UTF-8"
Content-ID: <33F0C8774F1DEF45B1A7A16AC9574117@namprd10.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; line-break:=
 after-white-space;" class=3D"">
<span style=3D"font-size: 14px;" class=3D"">Hi,</span>
<div class=3D""><span style=3D"font-size: 14px;" class=3D"">I am interested=
 in submitting a change upstream for open-iscsi. How can I go about doing t=
his?&nbsp;</span></div>
<div class=3D""><span style=3D"font-size: 14px;" class=3D"">Also, is the is=
csi utils on the fall. Gothic location, used on redhat as well?</span></div=
>
<div class=3D""><a href=3D"https://github.com/open-iscsi/open-iscsi" style=
=3D"font-size: 14px;" class=3D"">https://github.com/open-iscsi/open-iscsi</=
a></div>
<div class=3D""><span style=3D"font-size: 14px;" class=3D""><br class=3D"">
</span></div>
<div class=3D""><span style=3D"font-size: 14px;" class=3D"">Thanks</span></=
div>
<div class=3D""><span style=3D"font-size: 14px;" class=3D"">Anjali</span></=
div>
</body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/06EC4AC0-4E03-4D2D-A23C-FDE7377BA3A0%40oracle.com?utm=
_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/open=
-iscsi/06EC4AC0-4E03-4D2D-A23C-FDE7377BA3A0%40oracle.com</a>.<br />

--_000_06EC4AC04E034D2DA23CFDE7377BA3A0oraclecom_--
