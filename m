Return-Path: <open-iscsi+bncBCEJDZGXJAIJJWPH6ACRUBBWYBBIU@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 135D9138210
	for <lists+open-iscsi@lfdr.de>; Sat, 11 Jan 2020 16:41:09 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id v5sf3320446qvn.21
        for <lists+open-iscsi@lfdr.de>; Sat, 11 Jan 2020 07:41:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Uw5AFo8MGy5l4hXefcDks/ZKWnnuPMXbOqxbqIoR4pQ=;
        b=job6xmXtO816bOHf0ao++LTot7hBFZkh174r8My/5zjR/vzwiIxodgdE5JEmpg79Ad
         C0c2ASlinZ/BtoTzeN3gy8wod9qtigFGSlU7TqeMN4yRFLJCey0zC+M/nU7626cOMGSO
         50SML2MmEKx11cnOIWUP333DtFxzqLcjJhWjrdEjVbFmfz6AE9deJ3xOWhkhhryvuoKl
         EFKtncdKW/8KJbvdvq6cLNEEGcFk/MNvETw6ZFl1r1J74YSNcj7UpRHH3S9H+FijW3yT
         +XiRFhJPykubZZJ7tO5YaVqa+cA0x5pb7OH3FB7uvqZOElvXkKFrHhBclI1UUrgQucZ7
         2lig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Uw5AFo8MGy5l4hXefcDks/ZKWnnuPMXbOqxbqIoR4pQ=;
        b=hgbrpX2c84hvoYIOdRcdOXdZrtV6CM9G/aDu5YdH0CjEDWzSqd+ebHpvQGyniustVt
         olQ7AAAPh20JVQcuXAVWS8fbKD/iN+x36xz6WkeD9U3VmDOhCIW9/1XY/Z6Hz0R16UE2
         z6Tflxyr4LJXb3P+iskrEtWXwFMOjcz8wmByAXlgkmm3vqAUb5lZBmAPqnhwJsD6wWq8
         rE1T0OSvJGkdazsLh6hQ3kGqgC15nTHzU0cq96qtsgW3gjDbbHZZMQCWrAURCtdEa0M3
         y4rCznUVABiXuF5ptsFQdt4gOczFbqywN+GyascAU7wpwJSrk6rWJAPuSAGgKklTy8OD
         laMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Uw5AFo8MGy5l4hXefcDks/ZKWnnuPMXbOqxbqIoR4pQ=;
        b=QXeiI26wnjHXMYTmTg+NwPcJaOZk9xpW9OnZRmjk2cUwDvpiibvLD7enAnY9GfJ8hr
         sxOmUWMRc/ERcqBjbLy7xcbqHuzGomKUARv+SXi9HNdPTyksQu1sWy09kViKqvSCvNjO
         Yowlbgjw00qZN5Kpf5g+D1JVWfJNiWXqOgbXFIp8Cp2xnIpqU/vS4E9fcjOZuxbAtxxM
         qm+q8yAEK+vAbxCa5HMZcLi8ik9QCO3847o27Xbu8GUf3Aj3dsAri/+TLuNHIyTJhOGf
         n/pwdtde9y5/V3ptdEWOor9WCzvGNuS/BJdpxnAljwBlRokGOG/Udbe2nqgbq/9SMVRl
         ni4Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXJFme9/Z4xi7BQCdlZ0aLluDv7FFH+C4VyYlEyI+mOnERCC2fh
	mK0PIII/rqNLhx1YaW+GeAs=
X-Google-Smtp-Source: APXvYqzr8VBlm2WvngMXEzkt+JbLY+kpT8qwK79/k26S72ya6o/OCoCN85VUTL8Tilo33fh4uzA0YQ==
X-Received: by 2002:a05:620a:b1c:: with SMTP id t28mr8399218qkg.360.1578757268095;
        Sat, 11 Jan 2020 07:41:08 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:4c88:: with SMTP id j8ls412926qtv.14.gmail; Sat, 11 Jan
 2020 07:41:07 -0800 (PST)
X-Received: by 2002:aed:2863:: with SMTP id r90mr7147859qtd.19.1578757267553;
        Sat, 11 Jan 2020 07:41:07 -0800 (PST)
Date: Sat, 11 Jan 2020 07:41:06 -0800 (PST)
From: can zhu <zhucan.k8s@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <4d5aa484-fa9a-4d62-9206-5d5737684109@googlegroups.com>
In-Reply-To: <b7141d18-99d9-4d93-9252-a5e27393dfc6@googlegroups.com>
References: <f0bab99e-accd-46cc-9d37-7700773ffc47@googlegroups.com>
 <b7141d18-99d9-4d93-9252-a5e27393dfc6@googlegroups.com>
Subject: Re: Who know more about this issue for iscsid?
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_946_1414755896.1578757266745"
X-Original-Sender: zhucan.k8s@gmail.com
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

------=_Part_946_1414755896.1578757266745
Content-Type: multipart/alternative; 
	boundary="----=_Part_947_1236295695.1578757266746"

------=_Part_947_1236295695.1578757266746
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I did not set the auth.

=E5=9C=A8 2020=E5=B9=B41=E6=9C=8811=E6=97=A5=E6=98=9F=E6=9C=9F=E5=85=AD UTC=
+8=E4=B8=8A=E5=8D=885:49:13=EF=BC=8CThe Lee-Man=E5=86=99=E9=81=93=EF=BC=9A
>
> On Tuesday, January 7, 2020 at 12:20:15 AM UTC-8, can zhu wrote:
>>
>> kernel: connection2:0: detected conn error (1020)
>>
>> iscsid: conn 0 login rejected: initiator failed authorization with targe=
t
>>
>> iscsid: Kernel reported iSCSI connection 2:0 error (1020 -=20
>> ISCSI_ERR_TCP_CONN_CLOSE: TCP connection closed) state (1)
>>
>> iscsid: conn 0 login rejected: initiator failed authorization with targe=
t
>>
>> iscsid: conn 0 login rejected: initiator failed authorization with targe=
t
>>
>> iscsid: conn 0 login rejected: initiator failed authorization with targe=
t
>>
>> systemd: Started Session 3742 of user root.
>>
>> iscsid: conn 0 login rejected: initiator failed authorization with targe=
t
>>
>> iscsid: conn 0 login rejected: initiator failed authorization with targe=
t
>>
>> iscsid: conn 0 login rejected: initiator failed authorization with targe=
t
>>
>> iscsid: conn 0 login rejected: initiator failed authorization with targe=
t
>>
>> iscsid: conn 0 login rejected: initiator failed authorization with targe=
t
>>
>>
>> *env*
>>
>> kernel:3.10.0-693.el7.x86_64
>>
>> os:CentOS Linux release 7.4.1708 (Core)=20
>>
>> *iscsi*-initiator-utils: *iscsi*-initiator-utils-6.2.0.874-11.el7.x86_64
>>
>>
>> I can't configure acl and username=E3=80=81password.
>>
>>
>>
>>
> You have "auth" enabled but not set up correctly.
>
> There are two types of auth: discovery, and session. It looks like your=
=20
> session auth is not set up correctly. You need to know the auth username=
=20
> and password. It has to be set up on the target (targetcli) and the=20
> initiator (open-iscsi).
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/4d5aa484-fa9a-4d62-9206-5d5737684109%40googlegroups.com.

------=_Part_947_1236295695.1578757266746
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I did not set the auth.<br><br>=E5=9C=A8 2020=E5=B9=B41=E6=
=9C=8811=E6=97=A5=E6=98=9F=E6=9C=9F=E5=85=AD UTC+8=E4=B8=8A=E5=8D=885:49:13=
=EF=BC=8CThe Lee-Man=E5=86=99=E9=81=93=EF=BC=9A<blockquote class=3D"gmail_q=
uote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;pad=
ding-left: 1ex;"><div dir=3D"ltr">On Tuesday, January 7, 2020 at 12:20:15 A=
M UTC-8, can zhu wrote:<blockquote class=3D"gmail_quote" style=3D"margin:0;=
margin-left:0.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"=
ltr">







<p><span>kernel: connection2:0: detected conn error (1020)</span></p><p><sp=
an>iscsid: conn 0 login rejected: initiator failed authorization with targe=
t</span></p><p><span>iscsid: Kernel reported iSCSI connection 2:0 error (10=
20 - ISCSI_ERR_TCP_CONN_CLOSE: TCP connection closed) state (1)</span></p><=
p><span>iscsid: conn 0 login rejected: initiator failed authorization with =
target</span></p><p><span>iscsid: conn 0 login rejected: initiator failed a=
uthorization with target</span></p><p><span>iscsid: conn 0 login rejected: =
initiator failed authorization with target</span></p><p><span>













</span></p><p><span>systemd: Started Session 3742 of user root.</span></p><=
p><span>iscsid: conn 0 login rejected: initiator failed authorization with =
target</span></p>
<p><span>iscsid: conn 0 login rejected: initiator failed authorization with=
 target</span></p>
<p><span>iscsid: conn 0 login rejected: initiator failed authorization with=
 target</span></p>
<p><span>iscsid: conn 0 login rejected: initiator failed authorization with=
 target</span></p>
<p><span>iscsid: conn 0 login rejected: initiator failed authorization with=
 target</span></p><p><span><br></span></p><p><span><b>env</b></span></p><p>=
<span>kernel:</span><span>3.10.0-693.el7.x86_64</span></p><p><span>os:</spa=
n><span>CentOS Linux release 7.4.1708 (Core)</span><span>=C2=A0</span></p><=
p><span>







</span></p><p><span><span><b>iscsi</b></span><span style=3D"color:rgb(0,0,0=
)">-initiator-utils:=C2=A0</span><b>iscsi</b></span><span>-<wbr>initiator-u=
tils-6.2.0.874-11.<wbr>el7.x86_64</span></p><p><span><br></span></p><p><spa=
n>I can&#39;t configure acl and username=E3=80=81password.</span></p><p><br=
></p>















<p><span><br></span></p></div></blockquote><div><br></div><div>You have &qu=
ot;auth&quot; enabled but not set up correctly.</div><div><br></div><div>Th=
ere are two types of auth: discovery, and session. It looks like your sessi=
on auth is not set up correctly. You need to know the auth username and pas=
sword. It has to be set up on the target (targetcli) and the initiator (ope=
n-iscsi).<br></div></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/4d5aa484-fa9a-4d62-9206-5d5737684109%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/4d5aa484-fa9a-4d62-9206-5d5737684109%40googlegroups.com</a>.<b=
r />

------=_Part_947_1236295695.1578757266746--

------=_Part_946_1414755896.1578757266745--
