Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBTP6UONQMGQEC7RBBEA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0890B61F3B1
	for <lists+open-iscsi@lfdr.de>; Mon,  7 Nov 2022 13:51:29 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id bm2-20020a05620a198200b006fa6eeee4a9sf10055952qkb.14
        for <lists+open-iscsi@lfdr.de>; Mon, 07 Nov 2022 04:51:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3skuM9Ph3inkz1Kok8QKNdd0y16OPNL3Uly42ZKjUBk=;
        b=AtxRyqTP4qXpHn+xCz/NjZdDEVVnKutwN8ICrpahhJ92QrZvZx0kkSukeqxNodyiNh
         zz0UWMCM7wnfPVOGdGTwiWtr4/crlCbym0ydc+khVObFmw+msC9xz1Dt3b5V1pxldLDH
         nZrYdAGci7egM53ESnAyaFH+8WgveWGjytTbNCo31r0Td/sZgnNt8wXQQHU4xUmgjab6
         6bx9K4ONOyON7wgDL9piZmKRrnsfdr/9IeihwmihQOoYp+h4t/cwzGwH8qK33wELoapj
         emwt6LxcIfdkUznd1zLN0NX/LrZmCt9N7qO35U8f8X0vEwA6RDxyceX7aZnCBRrwm5Ev
         AM1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:references:in-reply-to
         :message-id:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3skuM9Ph3inkz1Kok8QKNdd0y16OPNL3Uly42ZKjUBk=;
        b=H1pwOMzB4R1z53hNQCo+zLlVZibP3PFjjUghpGEnlk+IAN1dw2r2Vc3BGUPwCJTGHw
         ilIE3KfkKDNBWGmsRyMF4/gPQBQTU7AuQ65DLItfeRJ3U5VjR93WRvoA8pKPDZMZBXUj
         a/WibqfOeVRWE5BCGbZDa/sGKvJBUzT2oz5VftBBHy6gjfLyZF7d6iPclPwQWixMFEGc
         ZMFco9sXq/b/SXHoHiZlPf1j5TXcIMdZsZOzbbZndN2VoVCf/9tFTwTbg3YIuE0sTG1l
         TOb/sWVli8t+VjbK57LIngGfNj2QmTxbsaKNWkw6FwlJIPtM+ohVDdyIOwB1kqjikyB/
         qbGw==
X-Gm-Message-State: ACrzQf24SbJhjNgq7qD5MvSH80/mG8Ks2x05RN/wUkDyEg3TBuIcd+bR
	pYYQ+NMDNdwWd56m4D3dH4g=
X-Google-Smtp-Source: AMsMyM7m0/lLz7hD613qaOmQUDNb6bLjvrYcUKBjqBamv23/aexe6t0ql2rI+SyhkIXglrzDUAp83A==
X-Received: by 2002:a05:620a:2207:b0:6fa:2d56:237f with SMTP id m7-20020a05620a220700b006fa2d56237fmr29324285qkh.527.1667825486794;
        Mon, 07 Nov 2022 04:51:26 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:622a:1e86:b0:39c:b9de:752a with SMTP id
 bz6-20020a05622a1e8600b0039cb9de752als1946314qtb.2.-pod-prod-gmail; Mon, 07
 Nov 2022 04:51:25 -0800 (PST)
X-Received: by 2002:a05:622a:252:b0:3a5:73a:1aa3 with SMTP id c18-20020a05622a025200b003a5073a1aa3mr39657273qtx.482.1667825484985;
        Mon, 07 Nov 2022 04:51:24 -0800 (PST)
Date: Mon, 7 Nov 2022 04:51:24 -0800 (PST)
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <282ce94a-6a01-4504-b1fe-eb476aa97718n@googlegroups.com>
In-Reply-To: <6db73c62-ae33-4a75-91d7-dd19117255f4n@googlegroups.com>
References: <6db73c62-ae33-4a75-91d7-dd19117255f4n@googlegroups.com>
Subject: Re: Could not logout of all requested sessions reported error (9 -
 internal error)
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_10442_1505966394.1667825484082"
X-Original-Sender: haowenchao@huawei.com
X-Original-From: Wenchao Hao <haowenchao@huawei.com>
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

------=_Part_10442_1505966394.1667825484082
Content-Type: multipart/alternative; 
	boundary="----=_Part_10443_1529513898.1667825484082"

------=_Part_10443_1529513898.1667825484082
Content-Type: text/plain; charset="UTF-8"

Would the discussion in this issue is helpful for you?
On Thursday, November 3, 2022 at 9:56:43 PM UTC+8 Andinet Gebre wrote:

> <https://stackoverflow.com/posts/74198294/timeline>
>
> I am able to discover and login into the Target from the iscsi client and 
> CHAP is also configured to authenticate to/from the ISCSI Initiator client. 
> I am getting the following error when trying logging out from the target to 
> check if the CHAP config is working as expected while log back in,
>
> [root@ltolx2020 ~]# iscsiadm --mode node --target 
> iqn.1992-08.com.redhat:sn.120f265e82be345ecb111d039ea331262:vs.14 --portal 
> 10.85.64.270 --logout Logging out of session [sid: 1, target: 
> iqn.1992-08.com.redhat:sn.120f265e82be345ecb111d039ea331262:vs.14, portal: 
> 10.85.64.270 ,3260] iscsiadm: Could not logout of [sid: 1, target: 
> iqn.1992-08.com.redhat:sn.120f265e82be345ecb111d039ea331262:vs.14, portal: 
> 10.85.64.270,3260]. iscsiadm: initiator reported error (9 - internal error) 
> iscsiadm: Could not logout of all requested sessions
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/282ce94a-6a01-4504-b1fe-eb476aa97718n%40googlegroups.com.

------=_Part_10443_1529513898.1667825484082
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Would the discussion in this issue is helpful for you?<br><div class=3D"gma=
il_quote"><div dir=3D"auto" class=3D"gmail_attr">On Thursday, November 3, 2=
022 at 9:56:43 PM UTC+8 Andinet Gebre wrote:<br/></div><blockquote class=3D=
"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204,=
 204, 204); padding-left: 1ex;">








   =20
        <a href=3D"https://stackoverflow.com/posts/74198294/timeline" targe=
t=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.co=
m/url?hl=3Den&amp;q=3Dhttps://stackoverflow.com/posts/74198294/timeline&amp=
;source=3Dgmail&amp;ust=3D1667910556644000&amp;usg=3DAOvVaw1R9vGM_sjK4Ni5_-=
YO_ibh"></a><div><div>

</div>

        </div>

       =20

<div>
   =20
    <div>
               =20
<p>I am able to discover and login into the Target from the iscsi client
 and CHAP is also configured to authenticate to/from the ISCSI =20
Initiator client.
I am getting the following error  when  trying logging out from the=20
target to check if the CHAP config is working as expected while log back
 in,</p>
<p>[root@ltolx2020 ~]# iscsiadm --mode node --target=20
iqn.1992-08.com.redhat:sn.120f265e82be345ecb111d039ea331262:vs.14=20
--portal 10.85.64.270 --logout
Logging out of session [sid: 1, target:=20
iqn.1992-08.com.redhat:sn.120f265e82be345ecb111d039ea331262:vs.14,=20
portal: 10.85.64.270 ,3260]
iscsiadm: Could not logout of [sid: 1, target:=20
iqn.1992-08.com.redhat:sn.120f265e82be345ecb111d039ea331262:vs.14,=20
portal: 10.85.64.270,3260].
iscsiadm: initiator reported error (9 - internal error)
iscsiadm: Could not logout of all requested sessions</p>
    </div></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/282ce94a-6a01-4504-b1fe-eb476aa97718n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/282ce94a-6a01-4504-b1fe-eb476aa97718n%40googlegroups.com</a>.=
<br />

------=_Part_10443_1529513898.1667825484082--

------=_Part_10442_1505966394.1667825484082--
