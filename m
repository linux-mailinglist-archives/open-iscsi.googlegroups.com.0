Return-Path: <open-iscsi+bncBD54HHNYIIILNT4Y5ECRUBBS4XV2M@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E3364BCC
	for <lists+open-iscsi@lfdr.de>; Wed, 10 Jul 2019 20:00:23 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id v126sf1335113vkv.20
        for <lists+open-iscsi@lfdr.de>; Wed, 10 Jul 2019 11:00:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562781622; cv=pass;
        d=google.com; s=arc-20160816;
        b=HWwfMl1T1O7DVQBCNwGkhooDngTmYNYUzHiljHOA1UiFVzC48TemPgT3kzlisBvQ19
         6jltlsS8mAzrhoBm9vVlQTkpr2ILG3RUXRcMeCfcNBXRdYT8Jz47QTK4CrRfunYqQswS
         9lhqx2sRKczjE/16Vub3f8j1LNYzkRk3tj5/dNg5zJSVZpyqNvbNYsJkrS9Jg3BLp+Yu
         lb9MeKJXXY0KcEbT/I01uTr5zI1vA8iAz3H9ZDh43whFNLnJCUnP99+6kAtJ3y17WS/6
         d5/X5SZAezYJUJ2/vCjJnjfZFvDQrnMviBT/JAK3A4wnqOOC9z0rfwzsVpeNO/1Uy+Pv
         sWFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=VShMS8FlKH/MkAznxPpiqjGD/afUIs9PUxzFK9tP1Uw=;
        b=Fvpi1qEFwxnIjh0lFWlS6+0N2FH0aj3UjkmdeImYlUFnQaDnRDUcscd/4KgK+u3Upp
         0Hy6wQE4qW9MdQvOEW7rmL3a/oY6raLANnFRmLBpdle6dmxltHslc1ey7Gtl3otlTmnp
         KuP1Tn3+w6RITPTvwJImkCu6ZGyY/B5SQSzeshNWlABpvCBJbBrcaLeW9+Z06DgbphBY
         najnvDVnnLkOwaMZ8ggo0KrYwWVbHT7VvWD0PYE88mUALYgUcJXUubWmAxd3Hnvb7gRL
         T7X7PxCIPvPXpvbcewB/sSlbI4NH3o5O2ye9AV7+LRMHcfby+mGORr0ALEU6a1WTljZr
         v1CQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lduncan@suse.com designates 15.124.2.87 as permitted sender) smtp.mailfrom=LDuncan@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VShMS8FlKH/MkAznxPpiqjGD/afUIs9PUxzFK9tP1Uw=;
        b=GOnfljHEfyAizAEL2pOXMgpmXGWxQ83d8lpANjGXDE5uyvONU3Ob37NnxRiJmKsHwD
         YB+358lFYM5yFFQDX63rAypKZJNAIkGqobZz66Fk5KJ4V+byegmVEuD5r+6aflcBVTpC
         si9837mT7iIMjq8oL3gHPNy7ZP6wI0ffCxMGow2ZrKXTW6b4ORA+QJMGFT2Scnbka8tJ
         6KnX4ee6xPT/CmaXdz3JqkhT8Wd23Mc0c46SycchWjVjVHtHvwhA3ytwkMP7YBTEyNNY
         4kJdZLMZ2SypMkBUhI/z2kgaWolCDAuT3xC+BHK9SZKn7dPLzJTYNcsYevHBv8iZCidK
         Wmkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VShMS8FlKH/MkAznxPpiqjGD/afUIs9PUxzFK9tP1Uw=;
        b=YJ9OIRYRkTw4N9J9MvSiW7S2azo4wZ9XA7/JCYy+ChDQpgH5wCPvygzLAmIArz8QWA
         qEEBtgMPCyd+qpNccqOGF14QLDQyt8nhntrDj8bTdhgpdUnRX7UzJdvE6BAcLOQ0LSVc
         1QIt+8RJSTkL3dgzkWHtLfq17VrtWwd3ss/+48JnKQLpNMO17IVEvXwM6ZslUMkelIx2
         P6GLKIcbsuKAxw70SWhqNcIUH8MHoxOM0As60Zq3aoz71e+1TM/9g59y7bCg5/yZr24t
         PkC+z7ss1FblU8+z5uqxjQ75OvoZ+HE4nqvsgCXgesbxH3bJhNxjXHl55b1eNTg1LpWD
         0DGg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVAZMBpZgOI+t8g3RYmexZtJroV6muHNVFybw8wg5kWYdz2DFfd
	zUus7dPxLxHvw9MuFb9n1kk=
X-Google-Smtp-Source: APXvYqwuE2L1q/tJaNBVd5kAt8vSyoPNiGhKZpL+4Qxd+F1aoSIGUqWu5CcjmEk/bk8ODOFT2fSl9g==
X-Received: by 2002:a05:6102:118:: with SMTP id z24mr19207291vsq.32.1562781622442;
        Wed, 10 Jul 2019 11:00:22 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1f:9dc9:: with SMTP id g192ls86840vke.1.gmail; Wed, 10 Jul
 2019 11:00:22 -0700 (PDT)
X-Received: by 2002:a1f:dd47:: with SMTP id u68mr7314083vkg.22.1562781622078;
        Wed, 10 Jul 2019 11:00:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562781622; cv=none;
        d=google.com; s=arc-20160816;
        b=C5ctLG/Zwg4DRDBG0oNvL0jOFoU3dsWB/cxiR1a1vdkk6cwiU6JyKGxEbgoz4yvnIn
         QV1i0q7QvnXK44RUUfM5MzcArKZbTW/6kEq8uFwHKCHHv4mijhvp1aj8AGy8Z9dwVET3
         nDqo4d0k+5JRvFJvZS8HqZz/z+xhfX2FR7UQXxRyjIXc+5WsCI1S1WpRr1AR72iHiJ4G
         q1CyxU1cO5DWk1kJz36TS1wzeZxELMpdRCAK2XUPfVLHVQG7/Id/NGo2wR+3hUGATVRW
         i0oIin3qxAtOY8pGcs23lxcIeWR/dTrfBKECRI7ZCp6y9HvXG/b4ybWIjocPWQTJG8NJ
         tMUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=Ugx4N7zShREEKzdZRGQZRgcv6SNdeNq0VHO8uy+wMfI=;
        b=NiSHvqbi+iTZYFnnzZXTHvKfi7/0oseFWP7gpxtcllGuHXvoyvnfFWdmC6uqGEddcc
         RQ9dQg+1i5woIYQQMuepgRc5Um+XhmAg54fXcAZQOD1ye4H49C+sWEA4PNvfAjhK+P3E
         g/X2VSipadl+gRRoWFe3E1SGUL1rWNvc2iuVUpaqmQOETY6E89hTYnAVxKaCHSMBPBEL
         aFoCvmTR2grQdad3F1Qk7+piMbI2EviVLILBriIOKXecMqJ9qrD5b81f+hd/wMFzHiq5
         z3RonLdavw/Wqut5N7IzyW+GsWKHzJT+0csyiKkk9foOzQVenpvgI3ziAbCzCH6KNJdM
         Bhlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lduncan@suse.com designates 15.124.2.87 as permitted sender) smtp.mailfrom=LDuncan@suse.com
Received: from m4a0041g.houston.softwaregrp.com (m4a0041g.houston.softwaregrp.com. [15.124.2.87])
        by gmr-mx.google.com with ESMTPS id s72si165276vkd.3.2019.07.10.11.00.13
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Jul 2019 11:00:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 15.124.2.87 as permitted sender) client-ip=15.124.2.87;
Received: FROM m4a0041g.houston.softwaregrp.com (15.120.17.147) BY m4a0041g.houston.softwaregrp.com WITH ESMTP;
 Wed, 10 Jul 2019 18:00:03 +0000
Received: from M4W0334.microfocus.com (2002:f78:1192::f78:1192) by
 M4W0335.microfocus.com (2002:f78:1193::f78:1193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Wed, 10 Jul 2019 17:47:34 +0000
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (15.124.8.13) by
 M4W0334.microfocus.com (15.120.17.146) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Wed, 10 Jul 2019 17:47:34 +0000
Received: from BN6PR18MB1172.namprd18.prod.outlook.com (10.172.207.147) by
 BN6PR18MB1266.namprd18.prod.outlook.com (10.172.210.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Wed, 10 Jul 2019 17:47:32 +0000
Received: from BN6PR18MB1172.namprd18.prod.outlook.com
 ([fe80::38f3:d27c:6480:d073]) by BN6PR18MB1172.namprd18.prod.outlook.com
 ([fe80::38f3:d27c:6480:d073%3]) with mapi id 15.20.2052.020; Wed, 10 Jul 2019
 17:47:31 +0000
From: Lee Duncan <LDuncan@suse.com>
To: Yang Bin <yang.bin18@zte.com.cn>
CC: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
	"jejb@linux.ibm.com" <jejb@linux.ibm.com>, "martin.petersen@oracle.com"
	<martin.petersen@oracle.com>, "cleech@redhat.com" <cleech@redhat.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
	"wang.liang82@zte.com.cn" <wang.liang82@zte.com.cn>, "wang.yi59@zte.com.cn"
	<wang.yi59@zte.com.cn>, "xue.zhihong@zte.com.cn" <xue.zhihong@zte.com.cn>
Subject: Re: [PATCH] Check sk before sendpage
Thread-Topic: [PATCH] Check sk before sendpage
Thread-Index: AQHVNvHttUE0icmf0Uic+RrHE7gyJ6bEISiA
Date: Wed, 10 Jul 2019 17:47:31 +0000
Message-ID: <1bc364ff-5bff-47ac-611a-f75c43f4bd1b@suse.com>
References: <1562743809-31133-1-git-send-email-yang.bin18@zte.com.cn>
In-Reply-To: <1562743809-31133-1-git-send-email-yang.bin18@zte.com.cn>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: DB6PR07CA0011.eurprd07.prod.outlook.com
 (2603:10a6:6:2d::21) To BN6PR18MB1172.namprd18.prod.outlook.com
 (2603:10b6:404:eb::19)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [73.25.22.216]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 556321fc-1cb4-4059-7736-08d7055eaea7
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:BN6PR18MB1266;
x-ms-traffictypediagnostic: BN6PR18MB1266:
x-microsoft-antispam-prvs: <BN6PR18MB1266F6A8BC0BF729D3DB010DDAF00@BN6PR18MB1266.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 0094E3478A
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(979002)(4636009)(376002)(396003)(136003)(366004)(39860400002)(346002)(199004)(189003)(68736007)(8676002)(31686004)(316002)(6486002)(478600001)(14454004)(31696002)(186003)(5660300002)(36756003)(4326008)(6916009)(86362001)(25786009)(6436002)(6506007)(80792005)(66556008)(81166006)(26005)(7736002)(81156014)(486006)(2906002)(71200400001)(71190400001)(53546011)(229853002)(446003)(64756008)(76176011)(66946007)(386003)(99286004)(6116002)(54906003)(476003)(102836004)(6512007)(66476007)(6246003)(53936002)(11346002)(8936002)(2616005)(256004)(7416002)(4744005)(52116002)(66066001)(305945005)(66446008)(3846002)(969003)(989001)(999001)(1009001)(1019001);DIR:OUT;SFP:1102;SCL:1;SRVR:BN6PR18MB1266;H:BN6PR18MB1172.namprd18.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LrqtibLnWL2tJF5btRWJ0Cw7rDxKCZNDs9c8kU/nRpW58exwVDexAD0PkRGRFNqDrIOIcgeCYDvVGZmzz8nIAlL/ss4TCCgjly0j4/B/z+Fj/qj/TjA+ocO1a7EuzRkIq9OGvR4xo00qykDorRRO0DxrMrjkcz5PpDCkMV9BL/YzPa3/6ujfqJ4WYkf290/2aRHj3qJcGDlZrDOC7W6x6/EutEsvBxGzDvbPtZn5VypuqJcUSgR5/cALGKn7ib+l5+SUGNzjl4PAIeOM1oLKgTK+VLY0Oy4sk4dt8McCDGcj8tGOld1rm5Jb5zx5/GbWPLvh34oJ1ctCouDPzR0jzl6176ZvEgc+BlfI6VZJBRBCZyb6QogKDvkOFbeQ9rgYb0R6bGI1fmWbjN9lT3ZbJkwgOpfNKLSsXxIAc+t+ccU=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <F3B3AF6B642FCC40B3B4B1F936A8554A@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 556321fc-1cb4-4059-7736-08d7055eaea7
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2019 17:47:31.7946
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LDuncan@suse.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR18MB1266
X-OriginatorOrg: suse.com
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lduncan@suse.com designates 15.124.2.87 as permitted
 sender) smtp.mailfrom=LDuncan@suse.com
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

On 7/10/19 12:30 AM, Yang Bin wrote:

> From: " Yang Bin "<yang.bin18@zte.com.cn>
>
> Before xmit,iscsi may disconnect just now.
> So must check connection sock NULL or not,or kernel will crash for
> accessing NULL pointer.
>
> Signed-off-by: Yang Bin <yang.bin18@zte.com.cn>
> ---
>  drivers/scsi/iscsi_tcp.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> index 7bedbe8..a59c49f 100644
> --- a/drivers/scsi/iscsi_tcp.c
> +++ b/drivers/scsi/iscsi_tcp.c
> @@ -264,6 +264,9 @@ static int iscsi_sw_tcp_xmit_segment(struct iscsi_tcp_conn *tcp_conn,
>  	unsigned int copied = 0;
>  	int r = 0;
>  
> +	if (!sk)
> +		return -ENOTCONN;
> +
>  	while (!iscsi_tcp_segment_done(tcp_conn, segment, 0, r)) {
>  		struct scatterlist *sg;
>  		unsigned int offset, copy;
>

If the socket can be closed right before iscsi_sw_tcp_xmit_segment() is
called, can it be called in the middle of sending segments? (In which
case the check would have to be in the while loop.)

-- 

Lee Duncan

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1bc364ff-5bff-47ac-611a-f75c43f4bd1b%40suse.com.
For more options, visit https://groups.google.com/d/optout.
