Return-Path: <open-iscsi+bncBD54HHNYIIIMNBVR5YCRUBBGBRXAC@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A29FB6A7
	for <lists+open-iscsi@lfdr.de>; Wed, 13 Nov 2019 18:54:16 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id e2sf1944602qtq.11
        for <lists+open-iscsi@lfdr.de>; Wed, 13 Nov 2019 09:54:16 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1573667655; cv=pass;
        d=google.com; s=arc-20160816;
        b=kSZupHh3ZLMAMVYwXLBqFdjTgWQFEDHH2ARTs55Jd0wHLAV+iDxGsTkc7iog3xVYcS
         fo0GsNGvzqdnhP2rqrZ0oJmPsNv2kdFMmDJ18GXaeopmnk4YdUSYapY5ylBS3BPUShF7
         R1V3BA4yYkWH5W8I5Nrk9JIyZO35Ap7Uti8NIoBv8IKMT2b4OiWelzuCG9U7mU+/cgli
         APrDGH8QS9ch+eRwHe4c/fDji0Dn0BKF1eEoxtFAloUkoGcjLFV1pRf2wOhNYeZCUF1h
         d7lSz9vyCfU61c3rCrdsCwDbQ9eI6cr3uK8U0OBlKyYoFuriYsh2RjHxtmVN116r+x6/
         vz9A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=FULKY7p8fMe75NM4ItgJz/dHdXzCKrOe9TsTIO3NEyc=;
        b=fLTvFexwDSNxUMSsTFP9xC1xutUkWe7LwWWg3QId/Q4DXpu0AyNj2u6JoAKrT48y3V
         JwrIhyg3z6Xgo0Q1x75Kf5/lNTHqGsCIvoqsfm7kYUxc7zLbkUE0xyUx9yH45T5nfzRD
         KqM689n1AGp+NhThG2xZEtqzWFaTzhydwFu4cY0l2o4iqG2MFvpDcTZNb2CSKKyaVjeT
         tO+Dtr+yC+hW+o8agA02DpFXwzU/suEbd7OXVS1lxL/0xWIt9y4yR1bQaPPItm4eiKAU
         QqmS0gNM5QImrDqJMRjKVeSWqizeffqCkVhICmiO8XOEn+Tm6FN/VjDUZKI7UBuqm6y3
         cPWw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 15.124.64.68 as permitted sender) smtp.mailfrom=LDuncan@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FULKY7p8fMe75NM4ItgJz/dHdXzCKrOe9TsTIO3NEyc=;
        b=MN+qT90MVcqayEUoh33ATCG6Bzh97/gEiTf26zOFnbUUZtKquLxeV/7Bg64xOUj2zb
         7C+FjjhfBkr3ey5K6bfKk3Nc/gI+L/SFqzDjSB3E6Y01zxNnKpA9YSEh1li4r7dJfY0S
         CxIJ0/ZywArTwskcoo16kHDUkeA7cLKP25shXXS7srzhJ2hAxaDl2aERd6NyzjQlcklF
         wlMvyPOlpEZnnWAXtCVZyRB8HYNHOsYcTzNZRS53rnvHczvhd0S8fhHm3pW/ufzVt2bO
         gkwzRYuKRk1ff0XlZA3CdKbDolIhGR1wbGwRzUIthgifYNRKAgusyg+neDeXKqgOgcA3
         8RxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FULKY7p8fMe75NM4ItgJz/dHdXzCKrOe9TsTIO3NEyc=;
        b=GEfM5dbCCb3//xNDqTLg5zTaZVKr43iQGF0JUdOq5whIkTlpforBjlwABJExjfzbwA
         zJITNfQxW0x8VuBxq8bOgpGFGO7TmH51DL5A3hkh7dmE99rHOWmnJeCK39f1/+54yRLI
         TNNQ53AlchVlFUSiHACwhB9wcqYGvNPNuGvSncLXhTDbrAeP1s2Qcgy6/3rlALuproUE
         fKp9J9E2LBOgPyq8wpodbDlRCVC2FnOlBMwCPkFy1t+34WyIVZESTjAiCKQhAAoaZ1yS
         s1LnKzB5LMnlR9a9N8N22pcH0Ikt+Lrcv/mlglHtVSKUk0yy2NYr3IeBR2viR6ntYuzU
         R8Qw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUI7GvO9OMQn100zj0jlGhm3SBMXHaIFJ1HN5MDe86SN9Vec+Tu
	egjo9fmCvLcU4L16irlpcsU=
X-Google-Smtp-Source: APXvYqyolecMtpdqq6vaxh1oxfMkc+naj8Jhd7G2A4UHspS0GFVucCGyp6YrajuNrONjGjS7j3Zucw==
X-Received: by 2002:a37:aa44:: with SMTP id t65mr3821672qke.60.1573667654841;
        Wed, 13 Nov 2019 09:54:14 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:92cd:: with SMTP id c13ls504769qvc.1.gmail; Wed, 13 Nov
 2019 09:54:14 -0800 (PST)
X-Received: by 2002:ad4:5891:: with SMTP id dz17mr4063432qvb.160.1573667654428;
        Wed, 13 Nov 2019 09:54:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573667654; cv=pass;
        d=google.com; s=arc-20160816;
        b=0ihvmnpMeV6/ElMdgd35R4fFEsc/gbnR0Y6qRLmLlQsZ/Mz6klmyDlVZLE2pDackvN
         +ZgxsGWeRa2FOidri7lrfxOjPY5qeFqiJQvph2/qgRCEcJkj1RNtBd52ZU9CsFeUUmQw
         Oxdh2Q6sX8ukASqktWwStOr3IMUdPV/QSG/+H5g8N9cd7Tmzo1Ghvj+3IDQ91hxcozsa
         Od9495NNxafN4Ektm4z9KB3hSP4CkNixkrV5Q3wcdsI0UbgiOrjSl8PM4KcGlHjduGiW
         wQeW8ydUYblM2Mzq4BVBfkSJyca2w/nFrV6bsffj5b4tlcBxmznIoBJ5k4DfyFatSPnC
         VpPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=g+gGddVW3XDEVcryoA2Rz6R7ZvGWRutzoceULWkl9jY=;
        b=k0XzWOJeIoNzgGpXfHZHSVExbE+I4L1CACInlJo2AMjJFXlbZdnwRyGZ2Qj1sutMwu
         KgIdo72tueShuRPD9oH4eppK++SOOarvLeL+e7Mq3ZhWEcGpztS2A6VQXd43u3zBVeNs
         SO4nopvCbadDWlXTZfZ3Co0GsEq8V6sP82nlqAGy+tDl2r3wd33+8ZWHBUSPAYXaMU3r
         UqbvmYySUlEs/vnjN4/zVJPrabRiXEpPS1ewVTjFjBN5nST9jBehVa4/6gHKOs78hdJk
         y29G8uCz1LYHnQOnKFs25xCIDy1JEXVoXmQWoYsvPz4kIedn7jzz9Q6RIvYcdvFu3llu
         HB9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 15.124.64.68 as permitted sender) smtp.mailfrom=LDuncan@suse.com
Received: from m9a0003g.houston.softwaregrp.com (m9a0003g.houston.softwaregrp.com. [15.124.64.68])
        by gmr-mx.google.com with ESMTPS id z41si163945qtj.1.2019.11.13.09.54.07
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Nov 2019 09:54:14 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 15.124.64.68 as permitted sender) client-ip=15.124.64.68;
Received: FROM m9a0003g.houston.softwaregrp.com (15.121.0.190) BY m9a0003g.houston.softwaregrp.com WITH ESMTP;
 Wed, 13 Nov 2019 17:53:31 +0000
Received: from M4W0334.microfocus.com (2002:f78:1192::f78:1192) by
 M9W0067.microfocus.com (2002:f79:be::f79:be) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Wed, 13 Nov 2019 17:52:48 +0000
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (15.124.8.12) by
 M4W0334.microfocus.com (15.120.17.146) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Wed, 13 Nov 2019 17:52:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dlbW0PwrLFcc7xWd/hdhiwTP6NO7pGwwu16I23ClSY7/1L7DzKGAVWi1Or3Fi9EWtnpdYY0BX6cVlQzd7CjsFffFulgLgrURs62M4TKcLjtjmy/eFaU1RQ3Q20moEsarQgEozXuAU7gR/fRSzSW67msEgjVvstsC9xx0kaLACdwDOdKJiEaOXRfdOwVbwx8nTMUnC7wfESk9uKh1XbEDtUudfsN0v9UXYfVFyNPZPzNiyKy3nVQUlwiwoUVANOwAuk3vBaNGntBMdPOz5cNILWYigckdGi1atgXXVJl/d7leh9IJ0VttpYIm+u5RfQhCTpoq8sE4jilaZxjD3rBGvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g+gGddVW3XDEVcryoA2Rz6R7ZvGWRutzoceULWkl9jY=;
 b=c5qMW+OUmgJqFJk+XHGAB8weg6a+qkCvjXYjuPrAPXP1Imu6svqWruzAzu9x+A39Z9+4WZI1ypW1bWIGOrbNwuGLvHghjhIBy0Eb37IAELPJOg9AITdFwgqTIxtUGoH3yrzfOaoo5eLK2Py8rIp45QeGEnz+n3P2aPhTCCHMhrvDkAFVH7Jo2iJB17cpGmTKWq4liRdQc1t+r341Mwgxb/gLgON+h9lIl7e/JdYlaPBTXf07VkNAcagxUS6E32Nri7Ob30LnbigpvvSlHU4yQUyHzT6YPYlPhfRPwbZ8rfd+arz57vjJURO02ZAeUhqIMPP4S+y2Rq9AkEjX7F7wfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from MN2PR18MB3278.namprd18.prod.outlook.com (10.255.237.204) by
 MN2PR18MB2702.namprd18.prod.outlook.com (20.178.255.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.22; Wed, 13 Nov 2019 17:52:48 +0000
Received: from MN2PR18MB3278.namprd18.prod.outlook.com
 ([fe80::2914:6699:d7e5:de45]) by MN2PR18MB3278.namprd18.prod.outlook.com
 ([fe80::2914:6699:d7e5:de45%3]) with mapi id 15.20.2451.023; Wed, 13 Nov 2019
 17:52:48 +0000
From: Lee Duncan <LDuncan@suse.com>
To: "Martin K. Petersen" <martin.petersen@oracle.com>, "wubo (T)"
	<wubo40@huawei.com>
CC: "cleech@redhat.com" <cleech@redhat.com>, "jejb@linux.ibm.com"
	<jejb@linux.ibm.com>, "open-iscsi@googlegroups.com"
	<open-iscsi@googlegroups.com>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, Ulrich Windl
	<Ulrich.Windl@rz.uni-regensburg.de>, Mingfangsen <mingfangsen@huawei.com>,
	"liuzhiqiang (I)" <liuzhiqiang26@huawei.com>
Subject: Re: [PATCH v3] scsi: avoid potential deadloop in iscsi_if_rx func
Thread-Topic: [PATCH v3] scsi: avoid potential deadloop in iscsi_if_rx func
Thread-Index: AdWPliQLA8PIGoMpTtGRxNyp42qoAAKLPyHxACIApAA=
Date: Wed, 13 Nov 2019 17:52:47 +0000
Message-ID: <e0ddba45-7fd4-a1e9-b1e8-d59a46316695@suse.com>
References: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915DFB0ED@dggeml505-mbs.china.huawei.com>
 <yq18soksgji.fsf@oracle.com>
In-Reply-To: <yq18soksgji.fsf@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P123CA0028.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600::16)
 To MN2PR18MB3278.namprd18.prod.outlook.com (2603:10b6:208:168::12)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [73.25.22.216]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7add3b6a-636a-41c8-b9bb-08d768624b3f
x-ms-traffictypediagnostic: MN2PR18MB2702:
x-microsoft-antispam-prvs: <MN2PR18MB270260DD2CF908FCD7DB0CDCDA760@MN2PR18MB2702.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(366004)(39860400002)(346002)(396003)(376002)(136003)(189003)(199004)(7736002)(11346002)(229853002)(4326008)(446003)(66066001)(2616005)(6436002)(7416002)(5660300002)(52116002)(256004)(14444005)(3846002)(6116002)(478600001)(14454004)(186003)(6486002)(66946007)(6512007)(66476007)(66556008)(486006)(6246003)(476003)(66446008)(64756008)(386003)(102836004)(31696002)(36756003)(53546011)(6506007)(99286004)(86362001)(25786009)(31686004)(2906002)(71190400001)(71200400001)(26005)(54906003)(8676002)(8936002)(316002)(110136005)(76176011)(305945005)(81166006)(81156014)(80792005);DIR:OUT;SFP:1102;SCL:1;SRVR:MN2PR18MB2702;H:MN2PR18MB3278.namprd18.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yBQMzg+j+fven3k9Nk8yaI4bJCAxlao34FreDBxOB3BGPAlpQPHFmYM/Xu5debZ42yu42IVhN0CR3XMouX+fiiJcdr0moWeXhpNdTiJYg+6c4hNXFr5FpJbN8S1hNyyRolmmIOWj2aep1uOQkY2xBRCL2EjRddS/D0U42wQ+521o9UsbCxLOMbVGzBqY5liLedFxH7CjXMB8DSDFotckm0po0iXjHX1iaOlnsxRihhGwtbPe/ofpNgGrIq74xyUIowt2hnzuGESzC958hLKkGHX0aiAyCny7APDXFaao/7WAaXvVUSBpAkEH+v05kNJpsItO81atkE+XzE1bp4f8WIe9miKpKg/1O9EaMPDPCgmd8OsIipTQw9ve/yqb3xof87hNb80qYVgw5ysH0AvlLnxQZCFKNlRX33jEsLXVSg9Xg33PS0IDseJQ0EkZ+WN7
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <1424B068C9B9EF449149B2E38A3C57CF@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7add3b6a-636a-41c8-b9bb-08d768624b3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 17:52:47.7794
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v4O4qOup4K498SsG9Hw61rjNDTm1zhqIiuoN6iRkZYfi4+A5jPOoHPyAQlXeDLpMBpHFmtk+7/Sj6efe4H1DpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB2702
X-OriginatorOrg: suse.com
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       arc=pass (i=1
 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass
 fromdomain=suse.com);       spf=pass (google.com: domain of lduncan@suse.com
 designates 15.124.64.68 as permitted sender) smtp.mailfrom=LDuncan@suse.com
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

On 11/12/19 5:37 PM, Martin K. Petersen wrote:
> 
>> In iscsi_if_rx func, after receiving one request through
>> iscsi_if_recv_msg func, iscsi_if_send_reply will be called to try to
>> reply the request in do-loop. If the return of iscsi_if_send_reply
>> func return -EAGAIN all the time, one deadloop will occur.
>>  
>> For example, a client only send msg without calling recvmsg func, 
>> then it will result in the watchdog soft lockup. 
>> The details are given as follows,
> 
> Lee/Chris/Ulrich: Please review!
> 


Okay, after looking again at the thread, I do have some additional
feedback for the patch submitter.

You should put your "changes in V2, V3, ..." above the patch line (the
"-- " on a line by itself), not as part of the patch.

Also, as long as you are making one last round of changes, please change
"deadloop" to "deadlock" in your patch subject, as deadloop is not a word.

Lastly, the "Suggested-by" lines you added are fine, but that generally
means that person suggested the patch, not changes. For folks that
suggest changes, it's up to them to say they like or do not like your
changes after you make them, at which point they can add their
"Reviewed-by" tag if they wish.

Please feel free to send your patch to me directly, before publishing,
if you would like a review before publishing again.

-- 
Lee

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/e0ddba45-7fd4-a1e9-b1e8-d59a46316695%40suse.com.
