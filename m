Return-Path: <open-iscsi+bncBD54HHNYIIIIRUVT6ACRUBEFO3FAE@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE3112E02A
	for <lists+open-iscsi@lfdr.de>; Wed,  1 Jan 2020 19:46:34 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id g20sf14317102pgb.18
        for <lists+open-iscsi@lfdr.de>; Wed, 01 Jan 2020 10:46:34 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1577904393; cv=pass;
        d=google.com; s=arc-20160816;
        b=0VZREqThLepUg6Pg2clCHN1ZWiosUQ0XijwsH6WFgMYfBkoQ/BS/cWiWQ7/RmmQgJV
         SbB85uFKDf2JS93hy4ESHdE/Uf5QDs8J4JFFbu29BgmRX2ecc0d6MakvV+26QAl9L+O3
         JpU+QG6Rv+O2Ah+EL/KYAXCS8/8pfETueDQkPfBIxM06HtkI+AYUJQc1cKP0VfU7zpNZ
         ZB37xc46wf53HCjaMzPw9Q2kxXTfYnHDSWbl4/ai3FZci82Lue0BI4iKSiVSGwiL6utE
         6UH5H52ss5krNSVbU+4MCv4pK8gDoOaTFjpi0yTiC3sadGygmYs6Tpd23MsOs7NPNoPv
         R0vQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=1+59Gx+Li8MiC6g9GkiMJkDCsdPpbWnIKdkTXjEOt30=;
        b=K2t0cdbaQjjhzU5Gwuu4Lkp+T8Cypx89yJLl8vTKlUCGtE6uF0O9quvm1B70IcXn2Q
         7UOTzZLEkeI0/qq3O0uLMK3QpMgwFxloW+wVaJVNP8yOjn4UOzGmhCI/CA2B+TN6Qtdg
         JVQO11gxxCSNn515v4SLzF1fMyC+DyYNJ+8SbKSC/XHoRo+7oKJBZX0RacvzQ8VAZuEk
         gtS24QVTznef18O08lSU0piUSR1vgyL8dQ8hP3rFuu9Y8uqiriKQkeSM7cN/uycssTac
         +QOmLsIbSXUmmg+yaqIWhMnQUZGXHx0jODlc+T4AgNKAhrncsVfFar9eXvReyuISasDZ
         E7mA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 15.124.64.91 as permitted sender) smtp.mailfrom=LDuncan@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1+59Gx+Li8MiC6g9GkiMJkDCsdPpbWnIKdkTXjEOt30=;
        b=ayB9O8mXKlZGaIuYMPte0Y7mWeG+lfirR5etaJ1h+fRo4M1LfDUlMLId1ZTmB/e6mW
         M0O3VDDz0cxGbAaTBj0WGM6J6uQNFZeO5TPUHeqTq98G1lASZXnHQlGOS74448ZAcSwR
         xppnmMeIcIE4c4jeTaiGBUAVkcPRIp40lyXlAlR34s2IuDojU4YHAg0N+FrMzbF27OFk
         EQjx1tzRJXJFTVcwHXcUlTtbotyIeyXdJ8OB59z+Lv5n+BRhK38tuxSovPVazpXzGlfb
         4IS5kOhCK8u8qH6BZYD0Ou/Th+OtHUD4Gk8j4GGyj1jrbWyzAxRVXlNYQS9reybuf/iW
         Jb4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1+59Gx+Li8MiC6g9GkiMJkDCsdPpbWnIKdkTXjEOt30=;
        b=YUgpzbGa8deluUUmuSVbR69ew39EsVfrITlBHZOthI50SCxwD9cqALJzb1HxYt7pBl
         IfwNhJZuYfrKKDRBAwot7+o5ZmK/ec0qij9AzCQBof+729Echz7KZLajy1nnB/g8FXap
         JR8TyDzLZim3aOqRerOS89W2nldltZFKNTy/hS5q5rjSVMD+Si0QumpMsNH1080eazPz
         wTsO4KpD+OU4JdcpnAcoszt94v9IKNmyK2SQJczTsEcGOHdwlp3IVu3R/XnS0Xxt/iiH
         KR+62yhN7TRY6k4YDgFoHuihpFc5OlkM99w2Vo+8KQiX9MDQ9GWJEmnPyiB3qhEfTfG0
         /xFg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUL26a2Z6+Q+upzUpOnGkEn5I6/U8hIoL6/HLJEkFvQv8ma82Ca
	HbPvN37NxT0vAkxuDXwJoQg=
X-Google-Smtp-Source: APXvYqxLtgTVx6cNvcji7gX8gIPwj9Thtxv3UCgzY+aZ+6rEuEwIJ94x72Fk3DwVt/5lfobev0iwMw==
X-Received: by 2002:a62:ed19:: with SMTP id u25mr86657664pfh.173.1577904392717;
        Wed, 01 Jan 2020 10:46:32 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:fe5:: with SMTP id 92ls2783875pjz.5.canary-gmail;
 Wed, 01 Jan 2020 10:46:32 -0800 (PST)
X-Received: by 2002:a17:902:8541:: with SMTP id d1mr82796537plo.57.1577904392180;
        Wed, 01 Jan 2020 10:46:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577904392; cv=pass;
        d=google.com; s=arc-20160816;
        b=xwad5WOpFmXMvM4EncTRDVgu2q8RaIkbVh7t84r43s+KP+4t+veViEmunfFta+2oKF
         3Z9aO2GQUiLQdyg8T1R8gFl3ccpNu1zJbA94Dwd61NgtxB59LvrQt3pKx1raxrB0tiuw
         JFWNT357gl7TO2AnbPiTrdZM2k5gBsj488aOg5OBtCbPXyfh9nMCV10PmQk6u4N8pEmy
         tcjepZGB1Ql0IuNiYIux6gb3GxIHn5fr2dMy0DWqFn3VxKTRnthHxp9cRlL8rsBlIJIN
         /9vTEHt6XhFo051I4EUq+1JMJHwoC/3/CPnEjQLQdIaRPS/eHDUo1PG8JVwRakJXV2c4
         DAWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=kpnp6L7BHdfxsomckxJNnoFr4MkfXsDFaijdt7U3qeU=;
        b=FpLnGZPqSPG7rxBOD2UHHs8N6AhS4kikXbwqH+vMmyga5RD9WUD7TdIa36wZgMhYNq
         ODPa6s0IknX0OyGq0Z7aLq2eKNVXoF2HcVsyLn5rFlYO2QpibGpkAJ7+yXGR8k515IJz
         xkwlADiR4M8WrXu6jolzH594DLhwe7+UwVzzZNAmlqmXPfu9C6LhUa8W59KHKlmRdSy5
         E3Ft0pX6OlgicmwardPQeVZIAmrDsWMnkczW4QZXICcChfGr5TZrGh3qCHED81eG2/mQ
         Zh9ojU7ju7JaiRlCPcYVM20CUtVjwliDrRyDRvCm+KEaCoEmBNOPe5g3wy0n8N3dYXCF
         wZag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 15.124.64.91 as permitted sender) smtp.mailfrom=LDuncan@suse.com
Received: from m9a0013g.houston.softwaregrp.com (m9a0013g.houston.softwaregrp.com. [15.124.64.91])
        by gmr-mx.google.com with ESMTPS id h2si200319pju.2.2020.01.01.10.46.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Jan 2020 10:46:32 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 15.124.64.91 as permitted sender) client-ip=15.124.64.91;
Received: FROM m9a0013g.houston.softwaregrp.com (15.121.0.191) BY m9a0013g.houston.softwaregrp.com WITH ESMTP;
 Wed,  1 Jan 2020 18:45:23 +0000
Received: from M9W0068.microfocus.com (2002:f79:bf::f79:bf) by
 M9W0068.microfocus.com (2002:f79:bf::f79:bf) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Wed, 1 Jan 2020 18:45:13 +0000
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (15.124.72.12) by
 M9W0068.microfocus.com (15.121.0.191) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Wed, 1 Jan 2020 18:45:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GPS9B1Oq52nfMYdkrOgxVtxNOqMIBTTE/I9IPGY0B0bOMVeX3u9rF3hS7Rb/Vhigo889TYYQzrkp49c0CGAwJHiU+TCqCxZ+oQkxZQcuBeF1BubSEcwPKJ0IEQL7uUt78rRuF0znAwxlU1D8ervkUU/d91G+Nd6Zb4nFYRnX3Ie9BUTqtx4HoO2NG9I8pMDPj2L08LCEHbmbKYU1NCjDmcXyrPPCXA0ygRTcgckjOhoZyfDtsImzPVMgLg0G69QWzAqLJk0pE5bqRrr4RgZPUVsPyh6JYr841vyoYUW8QbtVKC/jc84Zi2c0Bl2HbjM5ANJ7O6dV5KaBs2fnpRy4kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kpnp6L7BHdfxsomckxJNnoFr4MkfXsDFaijdt7U3qeU=;
 b=U98EDqQnN0q4DWpfyHwGZbGljJ7J1tiGm7U9p7bhFO9UmWWuvyL6wW1QxQaSTE2AAX+CfNhk7c7aGzZinQV2PYHopPwUeqPa6hf3Vbd70qkIdbHSAfPdmBXMOvOAtpy4fF9xxTpmYnlbbtGyAktrfWpgczvYsAn4q3y9Z4CW82R93TLEXIExykzIO+66cELjidyeuJvpv8AzF5vVFSet1Uoc22LMPjgzoFTDtTRn52UZgXaVTlml82MPFt10mHooGTN3Qgn18aMpYLXnIq9Fc/lMbNryISFFiK3d9UbP6e5/iDNU/NATf+fekmfkqBvlDBdYc3gbGKfl81KahGIwAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from MN2PR18MB3278.namprd18.prod.outlook.com (10.255.237.204) by
 MN2PR18MB3040.namprd18.prod.outlook.com (20.179.84.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.10; Wed, 1 Jan 2020 18:45:10 +0000
Received: from MN2PR18MB3278.namprd18.prod.outlook.com
 ([fe80::3050:6182:4666:6784]) by MN2PR18MB3278.namprd18.prod.outlook.com
 ([fe80::3050:6182:4666:6784%5]) with mapi id 15.20.2581.013; Wed, 1 Jan 2020
 18:45:10 +0000
Received: from [192.168.20.3] (73.25.22.216) by LO2P265CA0339.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:d::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.12 via Frontend Transport; Wed, 1 Jan 2020 18:45:05 +0000
From: Lee Duncan <LDuncan@suse.com>
To: Gabriel Krisman Bertazi <krisman@collabora.com>
CC: "cleech@redhat.com" <cleech@redhat.com>, "jejb@linux.ibm.com"
	<jejb@linux.ibm.com>, "martin.petersen@oracle.com"
	<martin.petersen@oracle.com>, "open-iscsi@googlegroups.com"
	<open-iscsi@googlegroups.com>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, Bharath Ravi <rbharath@google.com>,
	"kernel@collabora.com" <kernel@collabora.com>, Mike Christie
	<mchristi@redhat.com>, Bart Van Assche <bvanassche@acm.org>, Dave Clausen
	<dclausen@google.com>, Nick Black <nlb@google.com>, Vaibhav Nagarnaik
	<vnagarnaik@google.com>, Anatol Pomazau <anatol@google.com>, Tahsin Erdogan
	<tahsin@google.com>, Frank Mayhar <fmayhar@google.com>, Junho Ryu
	<jayr@google.com>, Khazhismel Kumykov <khazhy@google.com>
Subject: Re: [PATCH v3] iscsi: Perform connection failure entirely in kernel
 space
Thread-Topic: [PATCH v3] iscsi: Perform connection failure entirely in kernel
 space
Thread-Index: AQHVvC3FEZoy7r2tXUWrxA/rj/k16qfWLseA
Date: Wed, 1 Jan 2020 18:45:10 +0000
Message-ID: <ccac3c7f-add0-66e2-ee9c-78253067fdc6@suse.com>
References: <20191226204746.2197233-1-krisman@collabora.com>
In-Reply-To: <20191226204746.2197233-1-krisman@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0339.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:d::15) To MN2PR18MB3278.namprd18.prod.outlook.com
 (2603:10b6:208:168::12)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [73.25.22.216]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9544edff-56a5-4eaa-53ec-08d78eeabac2
x-ms-traffictypediagnostic: MN2PR18MB3040:
x-microsoft-antispam-prvs: <MN2PR18MB3040DC9D4BF2308CD1DD193FDA210@MN2PR18MB3040.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:901;
x-forefront-prvs: 02698DF457
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(39860400002)(136003)(376002)(346002)(366004)(396003)(199004)(189003)(316002)(16576012)(2616005)(52116002)(26005)(36756003)(66446008)(64756008)(66556008)(66476007)(478600001)(54906003)(66946007)(8676002)(71200400001)(8936002)(81156014)(81166006)(53546011)(16526019)(5660300002)(956004)(186003)(31696002)(2906002)(6666004)(4326008)(7416002)(6916009)(86362001)(31686004)(6486002);DIR:OUT;SFP:1102;SCL:1;SRVR:MN2PR18MB3040;H:MN2PR18MB3278.namprd18.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6nxA5mpAQD6OxZFC+krQUogmUMiSuzEj+yH04ALH7N8pZ8hPadbOee3GNMY2kJ4WGJhnAbVrJcbSaHKrkLlboFS0+RjxuouUAQAuJq/I5KhrR/AlX7mq/ANI0P/TBdTFbEFyA3qvdyP/a/L5VwX+iV321+iizT0jUMG2Xrt2gp1fWl7VZfMZw98iUVMZQFvLE/Ts+XbImPkP8fWmpynlIoMyoTTwoHyi/4SJwB8iOthYI+hhGRwIcOKfAkKndRWOLCj6Vsz+xo3IAbHJuReCJooN7QyUzwV2jTEC/LdWUWWVlpjRFuDozp9UcxLpTEhbGkT5KDaV3VBo+fzKR/Rip/96pQWtEeRv6RT/xjTQx8JXaOEcuUlQFuPvX4LKeYCjZfry1d0+nMW4Jd2Ic29iJGKzKl9nHdxDMn9J8AOUhqUkMG62TpjwC+TJfCejKzR5
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <0D64CE6C266AAA4897E24ABE43DB7F98@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9544edff-56a5-4eaa-53ec-08d78eeabac2
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jan 2020 18:45:10.5891
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ipxRsecoS03RndUBuZu1jb4RBVaDD707RvoCqlmEGBd9RWBWSyAbGU/LvE/tGULOzSMTYg56njAJDoEbUZUOvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB3040
X-OriginatorOrg: suse.com
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       arc=pass (i=1
 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass
 fromdomain=suse.com);       spf=pass (google.com: domain of lduncan@suse.com
 designates 15.124.64.91 as permitted sender) smtp.mailfrom=LDuncan@suse.com
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

On 12/26/19 12:47 PM, Gabriel Krisman Bertazi wrote:
> From: Bharath Ravi <rbharath@google.com>
> 
> Connection failure processing depends on a daemon being present to (at
> least) stop the connection and start recovery.  This is a problem on a
> multipath scenario, where if the daemon failed for whatever reason, the
> SCSI path is never marked as down, multipath won't perform the
> failover and IO to the device will be forever waiting for that
> connection to come back.
> 
> This patch performs the connection failure entirely inside the kernel.
> This way, the failover can happen and pending IO can continue even if
> the daemon is dead. Once the daemon comes alive again, it can execute
> recovery procedures if applicable.
> 
> Changes since v2:
>   - Don't hold rx_mutex for too long at once
> 
> Changes since v1:
>   - Remove module parameter.
>   - Always do kernel-side stop work.
>   - Block recovery timeout handler if system is dying.
>   - send a CONN_TERM stop if the system is dying.
> 
> Cc: Mike Christie <mchristi@redhat.com>
> Cc: Lee Duncan <LDuncan@suse.com>
> Cc: Bart Van Assche <bvanassche@acm.org>
> Co-developed-by: Dave Clausen <dclausen@google.com>
> Signed-off-by: Dave Clausen <dclausen@google.com>
> Co-developed-by: Nick Black <nlb@google.com>
> Signed-off-by: Nick Black <nlb@google.com>
> Co-developed-by: Vaibhav Nagarnaik <vnagarnaik@google.com>
> Signed-off-by: Vaibhav Nagarnaik <vnagarnaik@google.com>
> Co-developed-by: Anatol Pomazau <anatol@google.com>
> Signed-off-by: Anatol Pomazau <anatol@google.com>
> Co-developed-by: Tahsin Erdogan <tahsin@google.com>
> Signed-off-by: Tahsin Erdogan <tahsin@google.com>
> Co-developed-by: Frank Mayhar <fmayhar@google.com>
> Signed-off-by: Frank Mayhar <fmayhar@google.com>
> Co-developed-by: Junho Ryu <jayr@google.com>
> Signed-off-by: Junho Ryu <jayr@google.com>
> Co-developed-by: Khazhismel Kumykov <khazhy@google.com>
> Signed-off-by: Khazhismel Kumykov <khazhy@google.com>
> Signed-off-by: Bharath Ravi <rbharath@google.com>
> Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> ---
>  drivers/scsi/scsi_transport_iscsi.c | 63 +++++++++++++++++++++++++++++
>  include/scsi/scsi_transport_iscsi.h |  1 +
>  2 files changed, 64 insertions(+)
> 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index 271afea654e2..c6db6ded60a1 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -86,6 +86,12 @@ struct iscsi_internal {
>  	struct transport_container session_cont;
>  };
>  
> +/* Worker to perform connection failure on unresponsive connections
> + * completely in kernel space.
> + */
> +static void stop_conn_work_fn(struct work_struct *work);
> +static DECLARE_WORK(stop_conn_work, stop_conn_work_fn);
> +
>  static atomic_t iscsi_session_nr; /* sysfs session id for next new session */
>  static struct workqueue_struct *iscsi_eh_timer_workq;
>  
> @@ -1611,6 +1617,7 @@ static DEFINE_MUTEX(rx_queue_mutex);
>  static LIST_HEAD(sesslist);
>  static DEFINE_SPINLOCK(sesslock);
>  static LIST_HEAD(connlist);
> +static LIST_HEAD(connlist_err);
>  static DEFINE_SPINLOCK(connlock);
>  
>  static uint32_t iscsi_conn_get_sid(struct iscsi_cls_conn *conn)
> @@ -2247,6 +2254,7 @@ iscsi_create_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
>  
>  	mutex_init(&conn->ep_mutex);
>  	INIT_LIST_HEAD(&conn->conn_list);
> +	INIT_LIST_HEAD(&conn->conn_list_err);
>  	conn->transport = transport;
>  	conn->cid = cid;
>  
> @@ -2293,6 +2301,7 @@ int iscsi_destroy_conn(struct iscsi_cls_conn *conn)
>  
>  	spin_lock_irqsave(&connlock, flags);
>  	list_del(&conn->conn_list);
> +	list_del(&conn->conn_list_err);
>  	spin_unlock_irqrestore(&connlock, flags);
>  
>  	transport_unregister_device(&conn->dev);
> @@ -2407,6 +2416,51 @@ int iscsi_offload_mesg(struct Scsi_Host *shost,
>  }
>  EXPORT_SYMBOL_GPL(iscsi_offload_mesg);
>  
> +static void stop_conn_work_fn(struct work_struct *work)
> +{
> +	struct iscsi_cls_conn *conn, *tmp;
> +	unsigned long flags;
> +	LIST_HEAD(recovery_list);
> +
> +	spin_lock_irqsave(&connlock, flags);
> +	if (list_empty(&connlist_err)) {
> +		spin_unlock_irqrestore(&connlock, flags);
> +		return;
> +	}
> +	list_splice_init(&connlist_err, &recovery_list);
> +	spin_unlock_irqrestore(&connlock, flags);
> +
> +	list_for_each_entry_safe(conn, tmp, &recovery_list, conn_list_err) {
> +		uint32_t sid = iscsi_conn_get_sid(conn);
> +		struct iscsi_cls_session *session;
> +
> +		mutex_lock(&rx_queue_mutex);
> +
> +		session = iscsi_session_lookup(sid);
> +		if (session) {
> +			if (system_state != SYSTEM_RUNNING) {
> +				session->recovery_tmo = 0;
> +				conn->transport->stop_conn(conn,
> +							   STOP_CONN_TERM);
> +			} else {
> +				conn->transport->stop_conn(conn,
> +							   STOP_CONN_RECOVER);
> +			}
> +		}
> +
> +		list_del_init(&conn->conn_list_err);
> +
> +		mutex_unlock(&rx_queue_mutex);
> +
> +		/* we don't want to hold rx_queue_mutex for too long,
> +		 * for instance if many conns failed at the same time,
> +		 * since this stall other iscsi maintenance operations.
> +		 * Give other users a chance to proceed.
> +		 */
> +		cond_resched();
> +	}
> +}
> +
>  void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
>  {
>  	struct nlmsghdr	*nlh;
> @@ -2414,6 +2468,12 @@ void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
>  	struct iscsi_uevent *ev;
>  	struct iscsi_internal *priv;
>  	int len = nlmsg_total_size(sizeof(*ev));
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&connlock, flags);
> +	list_add(&conn->conn_list_err, &connlist_err);
> +	spin_unlock_irqrestore(&connlock, flags);
> +	queue_work(system_unbound_wq, &stop_conn_work);
>  
>  	priv = iscsi_if_transport_lookup(conn->transport);
>  	if (!priv)
> @@ -2748,6 +2808,9 @@ iscsi_if_destroy_conn(struct iscsi_transport *transport, struct iscsi_uevent *ev
>  	if (!conn)
>  		return -EINVAL;
>  
> +	if (!list_empty(&conn->conn_list_err))
> +		return -EAGAIN;
> +
>  	ISCSI_DBG_TRANS_CONN(conn, "Destroying transport conn\n");
>  	if (transport->destroy_conn)
>  		transport->destroy_conn(conn);
> diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
> index 325ae731d9ad..2129dc9e2dec 100644
> --- a/include/scsi/scsi_transport_iscsi.h
> +++ b/include/scsi/scsi_transport_iscsi.h
> @@ -190,6 +190,7 @@ extern void iscsi_ping_comp_event(uint32_t host_no,
>  
>  struct iscsi_cls_conn {
>  	struct list_head conn_list;	/* item in connlist */
> +	struct list_head conn_list_err;	/* item in connlist_err */
>  	void *dd_data;			/* LLD private data */
>  	struct iscsi_transport *transport;
>  	uint32_t cid;			/* connection id */
> 

Reviewed-by: Lee Duncan <lduncan@suse.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/ccac3c7f-add0-66e2-ee9c-78253067fdc6%40suse.com.
