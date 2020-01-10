Return-Path: <open-iscsi+bncBD7Z7UVWSMJBBH4K4PYAKGQER3MHS6Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B435137634
	for <lists+open-iscsi@lfdr.de>; Fri, 10 Jan 2020 19:40:33 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id 144sf2102526iou.3
        for <lists+open-iscsi@lfdr.de>; Fri, 10 Jan 2020 10:40:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578681631; cv=pass;
        d=google.com; s=arc-20160816;
        b=I00Y7rgAG90QW6+oaNdxMKRdCu5tNirSuZvLZHp4OZVjbrPkfj/uJpPJqZ2xg/lIja
         CSjqmM2p9q7jXrscJ3fi9AEZE3AiGTWaTeT0xq5M8cHPmENgHrfA2vOEnJqlBT7eHbSm
         FvcJlvSv5UDbLC+oQBaJcXYiBZbjFdkG/jYBsmsTug4KDTCZ4JRbisCoHZrK0CvuDu9z
         2vAYeZQnYRAvXV15oTI71h3uspT/Vl/cmI+rla0ebCSg5K5OzwOEWZDjpoRFQQc/QLiC
         rv3FaOOJIoCIOVuoaR+n6VtPqfcsqFJsoixhvh57R33BnNd9Uwk3VwvQ/R0JOwOqynR5
         OTRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ukMI7EvRaKIKqgRHggIBNycFXE7uY7cx5QMq7Io8eVU=;
        b=Y0zxh2siC+gyP4qMa1VGONw7By0wRn+vwR94ZW55iyXmxYwZLTBY+yDCWveF+NU73y
         84aneLE/fH204xoIj40u8m4kA55T4p1sr52gkslv5J21K6JqnlWYJ8qmgJDLg1NpW6J0
         nOoiXsT3rZ+bXjVjacWhqchf06xZ710UZ4vQGI9hegBNwXbzB/pQUN+dFdyVrl9AlJJn
         A/A3zQNJB2ieGL5qruYOduO5mU41aWshyQ8Q12DLhWCEbqsiDAYql8YPgqzURgYZ6MfC
         kAjrgOlh2FMoSMv/pqPIFwI8duxGqQgL/+pH+Mkbipx7UHMCm50ggy5v+tmNk+8rerWl
         G/sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mkDlSHY4;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ukMI7EvRaKIKqgRHggIBNycFXE7uY7cx5QMq7Io8eVU=;
        b=Z+NS9yT49EPL4Ab6YQu/a0+qOAaeGjvEuxURzhR/6wlljbvuHF9j1K9yOgkUO0RC8N
         5T9at7nzAKw3WBAHmUpedbBQmgDyf+hxWAQUX5pmdtxBLiyM4AP7XNB4unW6SxCOQLUn
         NT1eF3snsrYNexlaF6hHc+yUMYGSb0SEcbsFCSFMwMzTplVxr768Jgh5IZX71++z92uI
         RO71rR3sKO1TDfOaYcBnhUABatRMMfnnAauQSXaIvZDoM/kn6+TJoNEdNtQFpkDDAq1N
         K6O9gTxkOB7HHzq2qWJbH7X5mUOqJyc2IHtguNw7GBvujOQjS45F50Yf5UsVG+RY5TRd
         lxqg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ukMI7EvRaKIKqgRHggIBNycFXE7uY7cx5QMq7Io8eVU=;
        b=s1WImd8PRFsLlKE63SeXuYDz+lk4kvtatMJ+SWPLnvGbocaQxiC/8ZskQcR79g/wvc
         8DGZ+cbpbiryptE0GRf/d9wX/lEXn2dOJj+dk0YYZ6kBw9gyc3x7eXVf5/EYWxOoWHeB
         So6rELn9IL++IVWZxrGxP9/NA+Fo1QOulG7OeBrEjzj+pFyal/x8P578UU4B9Dg+FRDK
         oVJv+QYCX1qze2O/61JABaBewmzw2Eu/bH0nJd/NlxsRlQfR0Q0uodM/GQl0FxtuchfK
         XwCPX7RtJ76oDS55VzpgJxd68Lu7hlC1Y1thASIVQvbU90A+3hWO5PVyfK//el0+O7AE
         LiIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ukMI7EvRaKIKqgRHggIBNycFXE7uY7cx5QMq7Io8eVU=;
        b=g6NtNQwE0wTUhfCpeYPjxZih3bgNTmNdy8KwTSAP2YTW4uvJsxKGfmryVfP9vIEvYc
         LPtzdWE4nmzP4rJEJ7qEHzEWzAAav0Eer/RnF4WZsbsWUG1VzVBfSrQfxlkVog9FRYX6
         evIvdHALHKrODG0y4QEsj6q7Ardt/QvQwY+y12fGUOjC+hLmmTcx3sELWSxnZO1aYsfe
         XIuWzNrXoMz13tEIza0zkHPgOnrZ5+tcz8y0j+rF2suSN0IXLpXm9LMTuu7pm0BRuzdf
         smTgeZNuHtyYw81RBRbMDRS5RcMsi9tf8/oxxmg0AzOhdrcEWRSXdqdaCf1cio+rh+Ma
         c01A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWuUGzO1iqKNlAlzICMPT3Zs2geOk86CNweC4ilznZwsLhqsuEg
	eADHg+sfngiPRNjimm+H710=
X-Google-Smtp-Source: APXvYqxtiOYtWtMtHtTpZHJzFYebcmqzjrPjmr5AD9W8qkaOBFqG8Jf+TO6AuWPLUsiBPyMfKKOwew==
X-Received: by 2002:a5d:9e15:: with SMTP id h21mr3801360ioh.132.1578681631639;
        Fri, 10 Jan 2020 10:40:31 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6638:6a1:: with SMTP id d1ls511904jad.10.gmail; Fri, 10
 Jan 2020 10:40:31 -0800 (PST)
X-Received: by 2002:a02:1041:: with SMTP id 62mr4097156jay.51.1578681631075;
        Fri, 10 Jan 2020 10:40:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578681631; cv=none;
        d=google.com; s=arc-20160816;
        b=QWjQ+ckLSmQJYU/xM+pJaSz1CkBjFyCzLu3RISDoLKzKQmn869EkiHeAQMwFMSMzvL
         8rVYaJB0cexmdUrgigolG/tDI9e3vxVdw7A6RHCgeqlxvUNQDY6ZgJwKEIL4bB3GpzUb
         xX9MOg5NJb1W6uFAfSGCI64hd+ISqgc0RPyEAv/mBBnzaWCHBputH87X5iXZEBHCPOH/
         F+4q4i08vuEpVHzF6mQV6p0DBMeHBk3+XI0d8iyT7o0lJLS3yre5rXWG4/jbrW3PoT88
         ldmI6gjiZnS+DjrB2nvMQkaF4wW33Lx0IsnB82gLRkd7AOvLMfGm0tcm0xAFOvfynZYO
         xSHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=Nyel36k86EuxLgQO3nUIl+++jzGWBkediT9+3nOqNXU=;
        b=Uohrf0IYmCaVT5TzhzyZtMs6Kk8eSWSa+qdUpCJjXZlEVTmxy3C1qD3LeIL79HvoAx
         SAIejbK3wIU3d545UcwLvG7eUtUc2bDs/TQPo0iwx4h2aOWAW5JITE+R0HGqUQ2kjsUJ
         IrtuG4/LmLj86WHxADL3JjH/Q9Bf8lgbjWpW13rr6v4Q4UuwkD9HIBRwT7CsGjRRTyrQ
         XsHEXunkV0V+xQ3/qOUnNhL6PBPMyTPKfNEVouWdYNp+qr1Hpvh/6c9nHZgSHgI5cAM+
         W/oVfWsOXB/fWsL6eBxVCeP5rXkbWOjaXGAJS25egEGU0Ru676dG/XTx4DuEffCieAVm
         x43Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mkDlSHY4;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com. [2607:f8b0:4864:20::d2f])
        by gmr-mx.google.com with ESMTPS id k9si110883ili.4.2020.01.10.10.40.31
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jan 2020 10:40:31 -0800 (PST)
Received-SPF: pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) client-ip=2607:f8b0:4864:20::d2f;
Received: by mail-io1-xd2f.google.com with SMTP id i11so3108505ioi.12
        for <open-iscsi@googlegroups.com>; Fri, 10 Jan 2020 10:40:31 -0800 (PST)
X-Received: by 2002:a02:c988:: with SMTP id b8mr4213675jap.122.1578681630653;
 Fri, 10 Jan 2020 10:40:30 -0800 (PST)
MIME-Version: 1.0
References: <587116d0-ebce-45b9-b5cf-e6fbc3437b41@googlegroups.com>
 <CAK3e-EagWT_YBz=akXUsM=qMJX_T4=SowxOWCVjWQ2W_17LyAw@mail.gmail.com> <566e8911-552e-4dbf-afd5-89c156929bf1@googlegroups.com>
In-Reply-To: <566e8911-552e-4dbf-afd5-89c156929bf1@googlegroups.com>
From: Donald Williams <don.e.williams@gmail.com>
Date: Fri, 10 Jan 2020 13:40:18 -0500
Message-ID: <CAK3e-EZqkCqnoZi5fbeXGZeZ8k57eLA6NGgw_BxQGiz32M1_5g@mail.gmail.com>
Subject: Re: Two types of initiator stacks
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000cf0478059bcd756c"
X-Original-Sender: Don.E.Williams@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mkDlSHY4;       spf=pass
 (google.com: domain of don.e.williams@gmail.com designates
 2607:f8b0:4864:20::d2f as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000cf0478059bcd756c
Content-Type: text/plain; charset="UTF-8"

Hello,
 You are very welcome.

Also, iSCSI offload cards like the Broadcom (Now owned by Qlogic) are
typically called "dependent hardware initiators'.  Since it depends on
connection to the OS network stack to make it fully functional.  Otherwise,
it behaves just like a standard NIC.

Cards that completely offload the network and iSCSI functions are known as
"Independent hardware initiators'.   Since they don't require that OS
network connection.  They appear solely as a SCSI adapter to the OS.  All
the network configuration is done on the card.  Qlogic used to make the
best examples of this.  The Qlogic 4xxx series iSCSI HBAs.   Now you see
this in cards that support DCB, they are called "Converged Network
Adapters"  CNAs.   Since very few Software Initiators support DCB naively
the card has to handle everything.

Regards,
Don



On Fri, Jan 10, 2020 at 11:18 AM Bobby <italienisch1987@gmail.com> wrote:

> ah OK thanks !
>
>
> On Thursday, January 9, 2020 at 7:35:07 PM UTC+1, Donald Williams wrote:
>>
>> Hello,
>>
>>  It is referring to iSCSI HBA cards like Broadcom BCM58xx/57xxx or just
>> using a standard NIC and the Software iSCSI adapter open-iSCSI provides.
>>
>> Regards,
>> Don
>>
>>
>>
>> On Thu, Jan 9, 2020 at 11:57 AM Bobby <italien...@gmail.com> wrote:
>>
>>> Under section "How to setup iSCSI interfaces (iface) for binding" of
>>> README, there is this paragraph:
>>>
>>> " To manage both types of initiator stacks, iscsiadm uses the interface (iface)
>>> structure. For each HBA port or for software iscsi for each network
>>> device (ethX) or NIC, that you wish to bind sessions to you must create
>>> a iface config /etc/iscsi/ifaces. "
>>>
>>>
>>>
>>>  Here I am confused. Which both types of initiator stacks we mean here?
>>>
>>>
>>>
>>> Thanks !
>>>
>>> --
>>> You received this message because you are subscribed to the Google
>>> Groups "open-iscsi" group.
>>> To unsubscribe from this group and stop receiving emails from it, send
>>> an email to open-...@googlegroups.com.
>>> To view this discussion on the web visit
>>> https://groups.google.com/d/msgid/open-iscsi/587116d0-ebce-45b9-b5cf-e6fbc3437b41%40googlegroups.com
>>> <https://groups.google.com/d/msgid/open-iscsi/587116d0-ebce-45b9-b5cf-e6fbc3437b41%40googlegroups.com?utm_medium=email&utm_source=footer>
>>> .
>>>
>> --
> You received this message because you are subscribed to the Google Groups
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/open-iscsi/566e8911-552e-4dbf-afd5-89c156929bf1%40googlegroups.com
> <https://groups.google.com/d/msgid/open-iscsi/566e8911-552e-4dbf-afd5-89c156929bf1%40googlegroups.com?utm_medium=email&utm_source=footer>
> .
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAK3e-EZqkCqnoZi5fbeXGZeZ8k57eLA6NGgw_BxQGiz32M1_5g%40mail.gmail.com.

--000000000000cf0478059bcd756c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,=C2=A0<div>=C2=A0You are very welcome.=C2=A0=C2=A0</=
div><div><br></div><div>Also, iSCSI offload cards like the Broadcom (Now ow=
ned by Qlogic) are typically called &quot;dependent hardware initiators&#39=
;.=C2=A0 Since it depends on connection to the OS network stack to make it =
fully functional.=C2=A0 Otherwise, it behaves just like a standard NIC.=C2=
=A0</div><div><br></div><div>Cards that completely offload the network and =
iSCSI functions are known as &quot;Independent hardware initiators&#39;.=C2=
=A0 =C2=A0Since they don&#39;t require that OS network connection.=C2=A0 Th=
ey appear solely as a SCSI adapter to the OS.=C2=A0 All the network configu=
ration is done on the card.=C2=A0 Qlogic used to make the best examples of =
this.=C2=A0 The Qlogic 4xxx series iSCSI HBAs.=C2=A0 =C2=A0Now you see this=
 in cards that support DCB, they are called &quot;Converged Network Adapter=
s&quot;=C2=A0 CNAs.=C2=A0 =C2=A0Since very few Software Initiators support=
=C2=A0DCB naively the card has to handle everything.=C2=A0=C2=A0</div><div>=
<br></div><div>Regards,=C2=A0</div><div>Don=C2=A0</div><div><br></div><div>=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Fri, Jan 10, 2020 at 11:18 AM Bobby &lt;<a href=3D"mailto:ital=
ienisch1987@gmail.com">italienisch1987@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">ah OK than=
ks !<div><br></div><div><br>On Thursday, January 9, 2020 at 7:35:07 PM UTC+=
1, Donald Williams wrote:<blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr">Hello,=C2=A0<div>=C2=A0</div><div>=C2=A0It is referring to=
 iSCSI HBA cards like Broadcom BCM58xx/57xxx or just using a standard NIC a=
nd the Software iSCSI adapter open-iSCSI provides.=C2=A0</div><div><br></di=
v><div>Regards,=C2=A0</div><div>Don=C2=A0</div><div><br></div><div><br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, Jan 9, 2020=
 at 11:57 AM Bobby &lt;<a rel=3D"nofollow">italien...@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div>Under section &quot;<span style=3D"color:rgb(36,41,46);font-famil=
y:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,monospace;font-=
size:12px;white-space:pre-wrap">How to setup iSCSI interfaces (iface) for b=
inding&quot; of README, there is this paragraph:</span></div><div><br></div=
><div><pre style=3D"font-family:SFMono-Regular,Consolas,&quot;Liberation Mo=
no&quot;,Menlo,monospace;font-size:12px;color:rgb(36,41,46);white-space:pre=
-wrap">&quot; To manage both types of initiator stacks, iscsiadm uses the i=
nterface (iface)
structure. For each HBA port or for software iscsi for each network
device (ethX) or NIC, that you wish to bind sessions to you must create
a iface config /etc/iscsi/ifaces. &quot;</pre><pre style=3D"font-family:SFM=
ono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,monospace;font-size:=
12px;color:rgb(36,41,46);white-space:pre-wrap"><br></pre><pre style=3D"font=
-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,monospace=
;font-size:12px;color:rgb(36,41,46);white-space:pre-wrap"><br></pre><pre st=
yle=3D"font-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Menl=
o,monospace;font-size:12px;color:rgb(36,41,46);white-space:pre-wrap"><span =
style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-si=
ze:13px;white-space:normal">=C2=A0Here I am confused. Which both types of i=
nitiator stacks we mean here?</span><br></pre><pre style=3D"font-family:SFM=
ono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,monospace;font-size:=
12px;color:rgb(36,41,46);white-space:pre-wrap"><span style=3D"color:rgb(34,=
34,34);font-family:Arial,Helvetica,sans-serif;font-size:13px;white-space:no=
rmal"><br></span></pre><pre style=3D"font-family:SFMono-Regular,Consolas,&q=
uot;Liberation Mono&quot;,Menlo,monospace;font-size:12px;color:rgb(36,41,46=
);white-space:pre-wrap"><span style=3D"color:rgb(34,34,34);font-family:Aria=
l,Helvetica,sans-serif;font-size:13px;white-space:normal"><br></span></pre>=
<pre style=3D"font-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quo=
t;,Menlo,monospace;font-size:12px;color:rgb(36,41,46);white-space:pre-wrap"=
><span style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;=
font-size:13px;white-space:normal">Thanks !</span></pre></div></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a rel=3D"nofollow">open-...@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/587116d0-ebce-45b9-b5cf-e6fbc3437b41%40googlegroups.c=
om?utm_medium=3Demail&amp;utm_source=3Dfooter" rel=3D"nofollow" target=3D"_=
blank">https://groups.google.com/d/msgid/open-iscsi/587116d0-ebce-45b9-b5cf=
-e6fbc3437b41%40googlegroups.com</a>.<br>
</blockquote></div>
</blockquote></div></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/566e8911-552e-4dbf-afd5-89c156929bf1%40googlegroups.c=
om?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">https://gr=
oups.google.com/d/msgid/open-iscsi/566e8911-552e-4dbf-afd5-89c156929bf1%40g=
ooglegroups.com</a>.<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAK3e-EZqkCqnoZi5fbeXGZeZ8k57eLA6NGgw_BxQGiz32M1_5g%4=
0mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goog=
le.com/d/msgid/open-iscsi/CAK3e-EZqkCqnoZi5fbeXGZeZ8k57eLA6NGgw_BxQGiz32M1_=
5g%40mail.gmail.com</a>.<br />

--000000000000cf0478059bcd756c--
