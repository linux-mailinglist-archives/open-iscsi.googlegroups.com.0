Return-Path: <open-iscsi+bncBD54HHNYIIIOPPH26MCRUBHTJB5EG@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 099791962B1
	for <lists+open-iscsi@lfdr.de>; Sat, 28 Mar 2020 01:46:32 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id k15sf2778796lfc.11
        for <lists+open-iscsi@lfdr.de>; Fri, 27 Mar 2020 17:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n6Ml/45c8RN81bpYi2vbfRTsRwLOhoNchz8SCe7rDW8=;
        b=JspCaUhIsb4JLRRBvgUqvH2szBdJlBr9i5n6Jz/TMXFUrncnG9t0LqMY9kMoXOk3b/
         vCsv+EgWSAAJQrWb4fsGBxotwudocBHsVonVhQMmftuB6mP7afLAYWq17Lu2uZKNg22s
         XKQtrG8HhbCFM+tvRQwPU+3OClTsZYLMQC/udOnah3a7Vkq9QgPD3wzYGUav5catgv/E
         WnX1zlTVyDiSGWwrr3ApDe1cIEQ3yM/m9ZnzYWUFBNiDljw2R9dFDV+EDrfy1uqqhOUJ
         Mg3mZQlWATvOM5524uobA4DzoFZpOuVHjDcnptXt0Z8R07GPw+A4Plo7c7IGvaAByEqI
         35Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:in-reply-to:content-language
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n6Ml/45c8RN81bpYi2vbfRTsRwLOhoNchz8SCe7rDW8=;
        b=X3vXjCP/Icb6oMELzj+sBLOa3MzByfOu0blASkXCPv4P4KCqTBRJ1VaScFFoa5udVm
         ECRn3vhzn8JfFy7DVxE+A7cnw7j7Pe7U5lg6cuH850+4lGdKYL+uKg1Nvx91yo7+NkAr
         yJIT7m96vOYAxwLyxSxJO3zIZ0LXsbkHMqim8/vppxUkdCprMmPEFskjPjPjbxf5xB0T
         TFQcuIQSxMrd8a2CFG8qmsslXdSbzZSOagixSyDOGB1GDuwvEx0LZ/g86tn5ZpPwALq1
         VwPK3kjtJJ6TdxKx2acCTcpg1+/EVDBPo0H+Lu0ZB2hWK+knNd7ucczjJH7N4wnDe7LB
         TEpQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0Pubu1zzA2XYq3fXhuLGi0/f0u/Pyc/C52D1rQ8PcGIzeKok7vx1y
	QW4/enI/nY7wF+7pMtg26Ho=
X-Google-Smtp-Source: APiQypLo1gHsWwB8/jCn1vXzoTPUwkywfpZZG4yp2srfs3RnHKXMCETPA36Aszl6eloI2Er4FT69zQ==
X-Received: by 2002:a2e:9757:: with SMTP id f23mr834731ljj.269.1585356391504;
        Fri, 27 Mar 2020 17:46:31 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac2:41d5:: with SMTP id d21ls2001888lfi.11.gmail; Fri, 27
 Mar 2020 17:46:30 -0700 (PDT)
X-Received: by 2002:a05:6512:6cd:: with SMTP id u13mr1195413lff.1.1585356390880;
        Fri, 27 Mar 2020 17:46:30 -0700 (PDT)
Received: from m9a0013g.houston.softwaregrp.com (m9a0013g.houston.softwaregrp.com. [15.124.64.91])
        by gmr-mx.google.com with ESMTPS id h8si307559lfm.5.2020.03.27.17.46.00
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2020 17:46:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 15.124.64.91 as permitted sender) client-ip=15.124.64.91;
Received: FROM m9a0013g.houston.softwaregrp.com (15.121.0.190) BY m9a0013g.houston.softwaregrp.com WITH ESMTP;
 Sat, 28 Mar 2020 00:45:10 +0000
Received: from M4W0334.microfocus.com (2002:f78:1192::f78:1192) by
 M9W0067.microfocus.com (2002:f79:be::f79:be) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Sat, 28 Mar 2020 00:45:37 +0000
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (15.124.8.14) by
 M4W0334.microfocus.com (15.120.17.146) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Sat, 28 Mar 2020 00:45:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aGZ23bakXJ97ssJJyrcidOFTs+Kxqfh59htX0mcI/tRAh9qvZCQlOsf6baQ8biE6YDL9stegWwI93LFX9PO8IHtuw1D5ky88mMkSyqf2Img2RvNgXsqbGmHP+Ifsqe+gyMnvV0Q4vZc38u3xaR7rduPrgmdfo+kqJfiBHfN/nwoxp/DkCBMT+1zZfsmISJzgQYqA0J0ZtgRDMDQCoiStn0zUpqknGdP85Rmjs5kLzzXNfcLMES8Dk0kzm4UY2G1Jrp0RHUNtUtNgJH/mPrIoxLpPd4gCaF+33jbYaxygSt42eecxNVZl71gPdNGSwWNGM6k7JTp57BjI6mnsrDeu2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kINZ4Hf0WX+3JeHao5RH6WkZs5VsJo6p9vzozX07+k8=;
 b=Qgtjkld+QHTvVDaNSA8vNcTT+0kUtEkZRQCrJG1PvDe7KTi5/RzBJGoWsv4bzcbWLmyam+NJybDdE/UmLrAd5hQUwpf9ANjRZz+oMlm3zzqIlfoFc0AACmIfIszyuFvTl7gmR0rrBfCHQszkvf0V9xFl3x5/hiGpvLkFBoH3sEXH16v8HLIVL2nemQudKhpnS8xhDVdvVVCx74KCTPncCA2p/OVipfpnywHH4djevLIMAdqkei2Ifj/Es2uV1s5V8ezP8bFr7H8gx22xs14OqG77lfFmVE3EuwldT220VHpf469q4fi54wO8ybKgFYFiAMOJVGfjKIoIZA8F4ENW2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from MN2PR18MB3278.namprd18.prod.outlook.com (2603:10b6:208:168::12)
 by MN2PR18MB2431.namprd18.prod.outlook.com (2603:10b6:208:ad::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.22; Sat, 28 Mar
 2020 00:45:34 +0000
Received: from MN2PR18MB3278.namprd18.prod.outlook.com
 ([fe80::257e:4933:95ff:e316]) by MN2PR18MB3278.namprd18.prod.outlook.com
 ([fe80::257e:4933:95ff:e316%5]) with mapi id 15.20.2856.019; Sat, 28 Mar 2020
 00:45:34 +0000
Subject: Re: PATCH] iscsi:report unbind session event when the target has been
 removed
To: Wu Bo <wubo40@huawei.com>, Chris Leech <cleech@redhat.com>, "James E.J.
 Bottomley" <jejb@linux.ibm.com>, "Martin K. Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>
CC: <linfeilong@huawei.com>, <liuzhiqiang26@huawei.com>
References: <4eab1771-2cb3-8e79-b31c-923652340e99@huawei.com>
From: Lee Duncan <lduncan@suse.com>
Message-ID: <12f71fbf-746a-deea-aa93-e9f06c325dbf@suse.com>
Date: Fri, 27 Mar 2020 17:45:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
In-Reply-To: <4eab1771-2cb3-8e79-b31c-923652340e99@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: SN6PR16CA0044.namprd16.prod.outlook.com
 (2603:10b6:805:ca::21) To MN2PR18MB3278.namprd18.prod.outlook.com
 (2603:10b6:208:168::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.20.3] (73.25.22.216) by SN6PR16CA0044.namprd16.prod.outlook.com (2603:10b6:805:ca::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20 via Frontend Transport; Sat, 28 Mar 2020 00:45:33 +0000
X-Originating-IP: [73.25.22.216]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ce737134-08d8-4694-0457-08d7d2b15344
X-MS-TrafficTypeDiagnostic: MN2PR18MB2431:
X-Microsoft-Antispam-PRVS: <MN2PR18MB2431317D270FF5301C6B52D4DACD0@MN2PR18MB2431.namprd18.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2331;
X-Forefront-PRVS: 03569407CC
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR18MB3278.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(4636009)(39860400002)(366004)(396003)(136003)(376002)(346002)(4326008)(31696002)(86362001)(8676002)(956004)(36756003)(478600001)(31686004)(8936002)(6486002)(81156014)(2616005)(81166006)(186003)(2906002)(52116002)(66476007)(66556008)(26005)(6666004)(53546011)(16526019)(5660300002)(316002)(66946007)(110136005)(16576012)(21314003);DIR:OUT;SFP:1102;
Received-SPF: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iWPBQ9K1gSLYuG3wBarowhWJOTjwVXTg4SIvEnrnFZ5pE7+ixeh9fpS9KvZCOl79qBDnM5wymM+5Sem/8tzUZuPrSum0rSbY9pgLfzOP8kwsYtR3+YYdQNBwLoIzxEeoHqbLLrSS+xUeP/pgFCXOARl3cLr9r/PEpD46pFnaOsJfJP05RaT/CECSWc9823iI2gMV1GGPuN+0QNba/SQIxmaTqBM04eC6bGJC6i7MaAtOxOqpyQSzrAd+DuM7xBoKE3amEg0ZTkXd3UE/HJbSKWOjdYwyqdnko2ftqFWTHgMPIwQAxzqw/qctPjDHyFnWb/BeiXwS1XiseDp6Ta51m1cy5pr5Qj/DHn+AKF4PWus99T4Jy4KtN78v8rYxT8/yVfVjEe3Zx6QeQrNyKoxW3OshsKFgvZ22vmxrqyTVdIDBHVWoccVDA+/Vp0saICAQKcp8rojd2qtGygcYv7OU/fyNbFtEy+Szi/hY/h3sAiiQGR7i5UUkdura1hzBTUDJ
X-MS-Exchange-AntiSpam-MessageData: xV8m0Ho8OCvKYnyZLg1ThHZhYFx4eISmLyl8lM7ZEhxxbUiAF8IkD7jtB4X0bGC7t6mVdLpZhjQjdLzHXWxNjJ1VXV3EB2q5N0w8iA9vDCpx54EzoL/BtUBwuL0xYPL9OfwSkUfX+dCLLtXFfeHCvw==
X-MS-Exchange-CrossTenant-Network-Message-Id: ce737134-08d8-4694-0457-08d7d2b15344
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2020 00:45:34.6284
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Cnv/VA48U9eQtwKqrM83sBCvQoUI6HyIIxGpBsUtplJg3r5DuPOL6Ts0cQ/iwghIDW44WZp/Kr63heGitVX4eQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB2431
X-OriginatorOrg: suse.com
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       arc=fail (body
 hash mismatch);       spf=pass (google.com: domain of lduncan@suse.com
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

On 3/24/20 12:52 AM, Wu Bo wrote:
> The daemon is restarted or crashed while logging out of a session.
> The unbind session event sent by the kernel is not be processed or be los=
t.
> When the daemon runs again, the session will never be able to logout.
>=20
> After executing the logout again, the daemon is waiting for the unbind
> event message.
> The kernel status has been logged out and the event will not be sent agai=
n.
>=20
> #iscsiadm -m node iqn.xxx -p xx.xx.xx.xx -u &
> #service iscsid restart
>=20
> when iscsid restart done. logout session again report error:
> #iscsiadm -m node iqn.xxxxx -p xx.xx.xx.xx -u
> Logging out of session [sid: 6, target: iqn.xxxxx, portal:
> xx.xx.xx.xx,3260]
> iscsiadm: Could not logout of [sid: 6, target: iscsiadm -m node
> iqn.xxxxx, portal: xx.xx.xx.xx,3260].
> iscsiadm: initiator reported error (9 - internal error)
> iscsiadm: Could not logout of all requested sessions
>=20
> Signed-off-by: Wu Bo <wubo40@huawei.com>
> ---
> =C2=A0drivers/scsi/scsi_transport_iscsi.c | 4 +++-
> =C2=A01 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/scsi/scsi_transport_iscsi.c
> b/drivers/scsi/scsi_transport_iscsi.c
> index dfc726f..443ace0 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -2012,7 +2012,7 @@ static void __iscsi_unbind_session(struct
> work_struct *work)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (session->target_id =3D=3D =
ISCSI_MAX_TARGET) {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 spin_unlock_irqrestore(&session->lock, flags);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 mutex_unlock(&ihost->mutex);
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 return;
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 goto unbind_session_exit;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 target_id =3D session->target_=
id;
> @@ -2024,6 +2024,8 @@ static void __iscsi_unbind_session(struct
> work_struct *work)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 ida_simple_remove(&iscsi_sess_ida, target_id);
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 scsi_remove_target(&session->d=
ev);
> +
> +unbind_session_exit:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 iscsi_session_event(session, I=
SCSI_KEVENT_UNBIND_SESSION);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ISCSI_DBG_TRANS_SESSION(sessio=
n, "Completed target removal\n");
> =C2=A0}
> --=20
> 1.8.3.1
>=20

Reviewed-by: Lee Duncan <lduncan@suse.com>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/12f71fbf-746a-deea-aa93-e9f06c325dbf%40suse.com.
