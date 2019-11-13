Return-Path: <open-iscsi+bncBD54HHNYIIINX4NN5YCRUBCNPXS62@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D32FA74A
	for <lists+open-iscsi@lfdr.de>; Wed, 13 Nov 2019 04:30:37 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id h11sf532560plt.11
        for <lists+open-iscsi@lfdr.de>; Tue, 12 Nov 2019 19:30:37 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1573615836; cv=pass;
        d=google.com; s=arc-20160816;
        b=GazF33c+aYvtY2jX6MwfTvOz7mDq9CtMc5n3/IsXiK86EpPQBOMVrCVBiAwYiiAQLR
         9UZvBg6+jjEASu4/cl5+ob3JWaxS7xeToP82mtjuyaCDkkF48XdRjho8URqYeJWwLf+g
         wFaT4CfW4S795PvXDO+AW4HR1v3XoCMXVK0Qrd4EnpRR6Fj8ctwQmUljbaWJq3DxUwmw
         2eN/2DGGEBx82byDD2bmbiQ+6IpHSBds5CP/pfpQ9UbP68eCGNtfNkxDmkKuqj/kCt0j
         uHE8zUcM3JB4ykVHKoMQ6C//i+PCyhaFMa3buETdxZOzYp2R5Tcdt/oCK/LsRQYRmuD4
         XUkQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=tB8pHf9SmbPAtPJjrTyWRk/7AUu2QGPGX1CrGcDzaLg=;
        b=CQdsI4mQaSdtsTxG/9HsCZLLitPVE2D69LrMlRBwpMH94A5qfk7N6a3fbow20Wg0ja
         +SHcDtXw7EmMRVeBF2Yl05/uUIKFRP+rI8ldJCD671Pm6rEPENq+Btvd8m5bsSWY0EHr
         fRml+LkVfD1q4LfzJDdneoYuHLaPTXb4HK9+mx1JwxrWjmdc1td2p7YhffQYTEYTSIA6
         lIsrZGo81e8WWS614YH+u9va0066io8yKmbV8GP6QXnWd9fuhz9PbQ6zYxwWmrRtzTLr
         1nPGxjyv8UDAmrtnqfJhHIDWjirR4R3gc3pjmgCupNlt6rx8RBV6nr8YzRsNx3c6H5PJ
         ieQg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 15.124.64.66 as permitted sender) smtp.mailfrom=LDuncan@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tB8pHf9SmbPAtPJjrTyWRk/7AUu2QGPGX1CrGcDzaLg=;
        b=TdJOb9tuo5k0Z4B7vujVX+nTNHql/DH6KDekGZsSvYyxseFN7Ps3FBoFkLynO5bCZU
         EZGTcMU9xZKUT0qzK45Tqrxn6izkMyk0YpiYO3OlH8xLgFQw+VsQLMg3beF0ylcuC59t
         0MQpb/OG09BFFyCDtOi3WsI1zj337zQwp0wBN3aoBxVFFkEyrYcNKAXVcn6Spk0BPbh2
         MxKra+mMWTX9Myj+cYZaeZHK1V9GbAZ2Htftg2mNSOUbG9n+k+nbz2pnmkv1S2C+xL+G
         EMhJQ3K6ZdzkNLHK+k4DbXLo2xC2QdZvqj8hcULogszmphPIp10QSPicNGEjG88wpzmc
         fcQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tB8pHf9SmbPAtPJjrTyWRk/7AUu2QGPGX1CrGcDzaLg=;
        b=aYHiZBaEkdaJ9ZpQFAnWXr8TO8LL6bC490qPu+B1l7PsmtMeRfKoFf+7ZkACUtG2oo
         eVa7NI/uKOvvY8cltLrJdSE2TCp+VtAmkIRxCY7jqZIiqLZTjLyT219kZBYIyxle/8CL
         c6SZ4jbU+zUs2TRMbQyZINY/qVb54BN1TDCSqrhTvU662A470gjGDrP/8m5612QrlijF
         F5s5gvKz1kytgr3+cJVKKZsfCezfs4h/cEMwE5QUkqy7YHCLhumGpVW+uv2c8dRxETaf
         SlqLJN3iyDOwy8xuE2jPSHTbz3Y3UNMrbp29M69qUunxyWkgCmw7rVjp90ac/K5i3GBs
         sKqQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUEOtn1klVfpTus8vsjXVHqfRf8EEBhklxK5GtqTFUXXvPP70i8
	fD6Bsvb061MjvMOJb2zaqrc=
X-Google-Smtp-Source: APXvYqwC52a994t6U9M7HytKbIEH9Y1KBKJ6iGDKl40Th691bq/TeoIdfV0iCGf5z14uvkO/5tKnAQ==
X-Received: by 2002:a17:902:d70a:: with SMTP id w10mr1349118ply.279.1573615835905;
        Tue, 12 Nov 2019 19:30:35 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:cb98:: with SMTP id a24ls253187pju.4.canary-gmail;
 Tue, 12 Nov 2019 19:30:35 -0800 (PST)
X-Received: by 2002:a17:902:7205:: with SMTP id ba5mr1312270plb.95.1573615835330;
        Tue, 12 Nov 2019 19:30:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573615835; cv=pass;
        d=google.com; s=arc-20160816;
        b=EfKmR7HGp7MDn0hPkwSQWx//lhO6O7TWXIh+oiQzY/NzT6nbpfAXXX7J2dLDTGaVIe
         Rt40cawtFrvygt2CbrNBwSNpQ7iRg9HDspH8mNa11QpTvKaTARInL57qqeoyn1UyaJ/C
         nAbdmEhuoIkzgtz6D/SvMEHI1wxDHJgqQE3gZTNlH6PVwN6cB7RtN3NGQK8ztEWab3G0
         mJPpr+r1CJ5MeJOTPsvG5f1SDxfqF2uEo8OTnTJDEQ7wThlLG5I8qOhWjD1seNVPqN+r
         uipbUVOpnRHu+QrGrEi4k3Ozpp+R9t+OVbTNR4yprgB58ovvAxDaaUhuziv9fl+mWe6t
         7zCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=l4a7HiJs08lJ4EzfCtpUuCzqsEDdb4J09NY5pin1kU0=;
        b=SKAeHWqARqMepfv+uiXYAPohgDJ3PlnjegkkLPOKDVI5WfjAAOmz6ARQ/LxqDiEuCM
         JMasqiaQZ3KBKH7F52oDJAb0eQQKZjy93jf4aB+qHteTsI3bHZxk6jC5pTjLy5G2ehrQ
         JjFSa8bDe50dWaVMo/2ZB+YI+7D76+8SiMFTwnkp+L47FOpc+jJLN+s0tFlhVSpAWg8S
         EkoTtAS8xP0APhjyqPZ0Yo5R8+u3gdmEKsAT/KlgJSKK2ZEyJQVfr2S9hxz89b3rRvV6
         KMtvUWt3/oJ3/PanA91gU+GJtHWgbMelRrHo+EAXnXqFeIyXALfbIqHkjTJVaXMqHdLg
         GqHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 15.124.64.66 as permitted sender) smtp.mailfrom=LDuncan@suse.com
Received: from m9a0001g.houston.softwaregrp.com (m9a0001g.houston.softwaregrp.com. [15.124.64.66])
        by gmr-mx.google.com with ESMTPS id f17si26883pgk.3.2019.11.12.19.30.26
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 19:30:35 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 15.124.64.66 as permitted sender) client-ip=15.124.64.66;
Received: FROM m9a0001g.houston.softwaregrp.com (15.121.0.191) BY m9a0001g.houston.softwaregrp.com WITH ESMTP;
 Wed, 13 Nov 2019 03:29:50 +0000
Received: from M4W0335.microfocus.com (2002:f78:1193::f78:1193) by
 M9W0068.microfocus.com (2002:f79:bf::f79:bf) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Wed, 13 Nov 2019 03:29:33 +0000
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (15.124.8.14) by
 M4W0335.microfocus.com (15.120.17.147) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Wed, 13 Nov 2019 03:29:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mCACH9xRrw49YrhZLAJr1VUo4+45bYAJ208i4C0hirj29HdYU6HfOcxVsZUiN3UEXQuT79QZTLa3ytFImUJaXRUrqFrvyPFgSsC0pwhVpd+AjTCv9zxwqAOpjQPRuEt6jiHXk0+mc1le0uFeZF4oamxVgNuOwSYjPTYrndygk1CF3zzElHyBJJdgjuvI8xl4FojRDpazRSLK0AQe4lQ0OAm3zaagHmdHKKKezt5U8ZCxSHH5b9J5rJVPxAevYfB/mNbi1oKP3p7/TFIdY+M2+kR2GuELN/G6E5/IBeQZSTanIaZ6ivfDBFIITHdZqFq+6zTaTgGgRGj/sUQ0XuaaZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l4a7HiJs08lJ4EzfCtpUuCzqsEDdb4J09NY5pin1kU0=;
 b=H/WSo9tTnJMlKiDw7EijI9xD516+OhYNr0h8q1rwd3EUAV2zgnot5zBAm2R3XagZtaP0/DommqWdtef/J3b6v79HV6A2eHuAFz4NgpgwVQgCzCvMmY0Sz3sjV6Pk0VgoGAivAD8IJ0OjWHSKQPSIRZk6zRIpIiJyBwm/3r+y51chiILABNjC8uckXVlLlDCAuVg4ikbeJhtyGrDQQd87MCnPT5uDW5iFMunL8Kap0QLSTeUlsSGhyKwaZ6fDe9hIOQab4EdqMcWxIOxliSyT0THHbgbsi0wXiDsBTNuPXFH2EM0YD0EOaULgMyxQaoArDLA7dFfyNNzonRDqyvZBZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from MN2PR18MB3278.namprd18.prod.outlook.com (10.255.237.204) by
 MN2PR18MB2864.namprd18.prod.outlook.com (20.179.20.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Wed, 13 Nov 2019 03:29:31 +0000
Received: from MN2PR18MB3278.namprd18.prod.outlook.com
 ([fe80::2914:6699:d7e5:de45]) by MN2PR18MB3278.namprd18.prod.outlook.com
 ([fe80::2914:6699:d7e5:de45%3]) with mapi id 15.20.2451.023; Wed, 13 Nov 2019
 03:29:31 +0000
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
Thread-Index: AdWPliQLA8PIGoMpTtGRxNyp42qoAAKLPyHxAAPacAA=
Date: Wed, 13 Nov 2019 03:29:31 +0000
Message-ID: <d0d2bcf7-9d9d-40f9-335d-ebcdafdf9969@suse.com>
References: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915DFB0ED@dggeml505-mbs.china.huawei.com>
 <yq18soksgji.fsf@oracle.com>
In-Reply-To: <yq18soksgji.fsf@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0269.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a1::17) To MN2PR18MB3278.namprd18.prod.outlook.com
 (2603:10b6:208:168::12)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [73.25.22.216]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 83524f52-6784-44ed-ffbc-08d767e9b23e
x-ms-traffictypediagnostic: MN2PR18MB2864:
x-microsoft-antispam-prvs: <MN2PR18MB2864EC7490651EEAEB7220F3DA760@MN2PR18MB2864.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(979002)(4636009)(396003)(346002)(136003)(366004)(376002)(39860400002)(189003)(199004)(6246003)(81166006)(66446008)(36756003)(31686004)(71200400001)(71190400001)(8676002)(66476007)(66946007)(64756008)(66556008)(81156014)(80792005)(66066001)(6116002)(3846002)(14444005)(256004)(2906002)(486006)(110136005)(52116002)(8936002)(6486002)(6436002)(478600001)(14454004)(54906003)(6512007)(26005)(316002)(7736002)(7416002)(186003)(86362001)(4744005)(102836004)(11346002)(305945005)(76176011)(31696002)(53546011)(99286004)(229853002)(476003)(2616005)(5660300002)(6506007)(386003)(4326008)(25786009)(446003)(969003)(989001)(999001)(1009001)(1019001);DIR:OUT;SFP:1102;SCL:1;SRVR:MN2PR18MB2864;H:MN2PR18MB3278.namprd18.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3UJnH/qh0t7d9gJZxIgWF2cZ3n2Ty8Kl8lAcDUeJn69H+9RjGWd/HK4tNYKijOs8aNYhTtsuTSLfjca1UAfQPB5beAa5gMzBv5F+VD6O191e8HSxikx+cnn/bmT/h0HGbuZUqu8u88h7FWbqiPmp88PNtEl3vhKrAgd9E2DGvFaEjHUe2MmK9leGaqaNfUgONtA/uo1QCYr5mNOdGQgVic4Bk05LER7iUb0uVUoi4/6D+xKJdgU48Qp7qWktJD1a+FcFzjpo8BayDd1k3sFjU9DomPJ/He+5Jg1eqC4yi9hGgsC9ceT3sQ5wnG7tIuIh3ZlkttF8t+XrFxfTNHC77UT6yhMKbh3T67NLm6TOIYmE2iuyzCTkHX4afz47nBnAQPPv3+t+iQCZDU4B9I2IIvbsQH+xx4iRREUIz60/VpRzwUFm5okQDtpxNDUw0DNM
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <904369790D2AD140B3302D827380C40F@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 83524f52-6784-44ed-ffbc-08d767e9b23e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 03:29:31.5866
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I9i8TdS4K5116ytW1dn8r7fTwwxXy4XHE56owZ5h/wxomp8Bq9WwW6JhQdTLEFAG6dijQeV/KodeHmCaAO984Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB2864
X-OriginatorOrg: suse.com
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       arc=pass (i=1
 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass
 fromdomain=suse.com);       spf=pass (google.com: domain of lduncan@suse.com
 designates 15.124.64.66 as permitted sender) smtp.mailfrom=LDuncan@suse.com
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

I believe I already added my Reviewed-by tag. Do you mean past that?
Perhaps I missed something.
-- 
Lee Duncan

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/d0d2bcf7-9d9d-40f9-335d-ebcdafdf9969%40suse.com.
