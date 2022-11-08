Return-Path: <open-iscsi+bncBC755V5RXMKBBI5FVONQMGQEHN2KDUY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 38629621ECD
	for <lists+open-iscsi@lfdr.de>; Tue,  8 Nov 2022 23:05:27 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id de43-20020a05620a372b00b006fae7e5117fsf5543107qkb.6
        for <lists+open-iscsi@lfdr.de>; Tue, 08 Nov 2022 14:05:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:references:in-reply-to:message-id:to:from:date
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=0Uxk6V7fzkytTPHq47JCeAkufcY/jO1/CRfANF6PemA=;
        b=rsBwpJN2KIIi1Sg+iVFl2zYKSwnuJ0ZGBEVprQicka6xbx3+zvF6+0J78vRpRqLNdX
         p7sM5DGzanylUWvBTPSajywU6YO3T5YM+gIIek9AlXR6o5izev6iRwHvcr0+OPdvPZad
         fcj+9+NxoUPrgpIKx+3LVagCOFp2niv5Jy0LMQmEvPdt0u05RReEjCd3IsXRjppaoOAX
         nJ59m793GCnFQcljjmUuMFd3lgS9twtY975GPUcLHnCpDMX0iJ0Hm+wdKRYfgxC305ri
         MszfvYdCmUy+bxAab80vIyO6ZkjH2pb3xhlUoxhXazgZCW1b4zgzNVQ9GmVxW4hY2+rn
         It8A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0Uxk6V7fzkytTPHq47JCeAkufcY/jO1/CRfANF6PemA=;
        b=WtDidgKcCh/QtBYD4lfwijinxOjh/J18n9BlQo49mHX7XOBuhnwK8GIwpm9gmHGkP4
         5RONqjc7hAMd2SKD8rYDqUyMlN+8McKTFszLHmyxF7YcPMkqPjTRZSVN9riF+FeFuLva
         /hBqRe557tnkjoqBilvqigUqgCbLDqNHkkov9EHwrWWTz0MGPBN2hTj+V/lfWOUixB6A
         pJExXYNpfwEz/p7gApW3lqGJ9k8tLfKhtYhwRa8a5dJvlR2UDlN3wY+q2BhDawHXc2kh
         aRIWOTOx5emgvHRiLdESU3Xx/5e0NVwFPaXUEpl4HD5E4AcEX3VECPsM+vWFBGoRv18V
         ZSPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:references:in-reply-to
         :message-id:to:from:date:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Uxk6V7fzkytTPHq47JCeAkufcY/jO1/CRfANF6PemA=;
        b=CE4WqOHj8nV1M4i6IwD041anmmqR1n31sWPbnw4oo7uC57YcPn9hp9lqSDpZYVXQf0
         YqjCL4yXgLIYO0x+abWtfcArODRE9OY4M0iZCI8+JSCyhoxfW9sqHYO3gNxRoYMKInZ3
         g0MAZg0IvcX99YeC3BQ5zkCLZ4Zy42wx1z4NDolv+WFCv/UHUeQ1UQWxjE0qM6iI0JjU
         gaUxk6tzlOKztpk3nrEiyEXCD2Gx2E76GEbAtVBP6o0tCEVTOq1EyVaWhLi+9Gz9OPfO
         dez2oG0XaOwqGdWi/kHgRm48UcgsrQZtzzJy3bgqkLrTBfZhYcGSKhLXCCOgghAHw+Ur
         VOtQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ACrzQf1rNbcZaqgokOMPxyxWxcbm+BR6Dqq/nwXC8Y0zIwUCsXqg3V3K
	KGlYt/CZNLStuh7Ls7umgCE=
X-Google-Smtp-Source: AMsMyM79m6rK9FSsATPd3I9T/Lc2aToi6sbUCK37KvhMvzqsRZY3ZTiE1PmXkWUP4yAN4q9XXB3Dmg==
X-Received: by 2002:a05:622a:1905:b0:3a5:c6f:a874 with SMTP id w5-20020a05622a190500b003a50c6fa874mr44819468qtc.282.1667945125243;
        Tue, 08 Nov 2022 14:05:25 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:1524:b0:6f4:ee4f:fd40 with SMTP id
 n4-20020a05620a152400b006f4ee4ffd40ls9775046qkk.5.-pod-prod-gmail; Tue, 08
 Nov 2022 14:05:23 -0800 (PST)
X-Received: by 2002:a05:620a:d55:b0:6f9:fadd:4762 with SMTP id o21-20020a05620a0d5500b006f9fadd4762mr41569854qkl.335.1667945123068;
        Tue, 08 Nov 2022 14:05:23 -0800 (PST)
Date: Tue, 8 Nov 2022 14:05:22 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <09fbab38-c3ce-4724-b69e-e0fde2468578n@googlegroups.com>
In-Reply-To: <6db73c62-ae33-4a75-91d7-dd19117255f4n@googlegroups.com>
References: <6db73c62-ae33-4a75-91d7-dd19117255f4n@googlegroups.com>
Subject: Re: Could not logout of all requested sessions reported error (9 -
 internal error)
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4006_1801255713.1667945122108"
X-Original-Sender: leeman.duncan@gmail.com
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

------=_Part_4006_1801255713.1667945122108
Content-Type: multipart/alternative; 
	boundary="----=_Part_4007_476007219.1667945122108"

------=_Part_4007_476007219.1667945122108
Content-Type: text/plain; charset="UTF-8"

Could you try this with debugging in the daemon as well as the command? 
Also, can you share you iscsid.conf? Of course obfiscate your name/password 
settings if you wish. (But be sure username/password is not the same as 
username_in/password_in -- the sets have to be different).

On Thursday, November 3, 2022 at 6:56:43 AM UTC-7 Andinet Gebre wrote:

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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/09fbab38-c3ce-4724-b69e-e0fde2468578n%40googlegroups.com.

------=_Part_4007_476007219.1667945122108
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Could you try this with debugging in the daemon as well as the command? Als=
o, can you share you iscsid.conf? Of course obfiscate your name/password se=
ttings if you wish. (But be sure username/password is not the same as usern=
ame_in/password_in -- the sets have to be different).<br><br><div class=3D"=
gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">On Thursday, November 3=
, 2022 at 6:56:43 AM UTC-7 Andinet Gebre wrote:<br/></div><blockquote class=
=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rgb(2=
04, 204, 204); padding-left: 1ex;">








   =20
        <a href=3D"https://stackoverflow.com/posts/74198294/timeline" targe=
t=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.co=
m/url?hl=3Den&amp;q=3Dhttps://stackoverflow.com/posts/74198294/timeline&amp=
;source=3Dgmail&amp;ust=3D1668031255841000&amp;usg=3DAOvVaw3CsKU826JDtD3YcE=
gRii0a"></a><div><div>

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
om/d/msgid/open-iscsi/09fbab38-c3ce-4724-b69e-e0fde2468578n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/09fbab38-c3ce-4724-b69e-e0fde2468578n%40googlegroups.com</a>.=
<br />

------=_Part_4007_476007219.1667945122108--

------=_Part_4006_1801255713.1667945122108--
