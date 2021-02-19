Return-Path: <open-iscsi+bncBC755V5RXMKBBUW7X6AQMGQEWQH3SWY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CCC31FD8B
	for <lists+open-iscsi@lfdr.de>; Fri, 19 Feb 2021 18:05:23 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id j2sf2426809ots.8
        for <lists+open-iscsi@lfdr.de>; Fri, 19 Feb 2021 09:05:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=FbdYUfKmKYH+s+O+GP3kvcyCbZC9P6nu4EENfJxpd+A=;
        b=kvX9svRjOhd/ZzpJWB2wn1Gyvv5kTVLOtObUmkbSJaSVFcSvAqYq6lSgJlTvD5ov1b
         ItUX+/B19Y67ez8bDyYwnyva3OEQmBwbJpg8YLSi9J9KaHn0Lh/VWd70f9AIcA1Hp2BX
         PcyrpRiweDHthrabDiy+XrKs2f3t00qYAYjCysEd0f6R2rVeNtYwrgAZidiwBgk0ikKV
         5pPCb0bA5qoigNZvUo9Di/xV+rM3qsfFf8j1lr91jH/2i2JYcH6ALkaIbqLHxTKSqDm7
         SH9n1nf9/JSMHuYTqJBasHHRrd5A+G4Th11dpL3jR7H6jI62vJR/ygNjV6qwHsyTr4yt
         mrtw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FbdYUfKmKYH+s+O+GP3kvcyCbZC9P6nu4EENfJxpd+A=;
        b=Y5kHEWSSzrHE3HEreXh0xA7dCou8cpLg/CE+VFiGeFa1xOQInf3Hx+X96xeKWSQssd
         pFKp9cVT6YleeUBNBRyMFzAmwqLqjv5gzDHQd16vD0S1+FfG7Y6RDoU16dkEo4lSVjJY
         1OVnAcaqs9Yf0WH9ymKw8iqxhzzXS1/EYTjg/k4ief3tqgzEYAuRTJBckeBwmcQATcBl
         JVSBOW8UTjkuZuJ6qYV6ZnSORrclyUQzZubjn5bSJaXm/DhiVqEVBJq6ZQeT4ZfAICY8
         YfG0XtpSpXRTbtU/RRnEE4lJoJJuaPcZSYPZU/4G4wP1ecKP363SQiTjnB/5hgeiSldr
         tflw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FbdYUfKmKYH+s+O+GP3kvcyCbZC9P6nu4EENfJxpd+A=;
        b=dKiUqLGogs2wbTD5hkA+fQOjBOFZ7hU2vgXwS9zQP6CKJ0QgIRyInWwoVsEuMI9tfK
         qTsXjJRHBActR1kSnTz2k6UEue8v23vTeQ8e2GEDrSBAzBQJLly7JeGcFW3iPVynwQ+W
         aYEqIpEhZQeDcG8OOC97tQoAfaZu+RJorpwFTEvATa4ubaUsFUj86ax/47tHCbH/D7hl
         +VC4THurky29MXfONYciZYQPeaHXL5zAfPCobBKNBeIqwIpNvcFFBoftVW/4QfPIHqcM
         RfkqUQFgqtEag299NAyjjz+/pDGKVjAMK8kLUHg1mYEk5Dlk1mXB4u+Iq8/XyNl6tLJI
         LARQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530k377QylMFGqicOwYwFRz634/07qmY+HwTf/hl0rWX3Q+ZvAmk
	JIFYOk+aFL9PM08xjvr9vg8=
X-Google-Smtp-Source: ABdhPJzI923aKxLsk6ubfa3G99HvewmeTwn4JQ+fkvfolJ0YbxF5W7vt1oDX1ZTlqg+IzNzg5nKKHQ==
X-Received: by 2002:a05:6830:140f:: with SMTP id v15mr7510636otp.15.1613754322601;
        Fri, 19 Feb 2021 09:05:22 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:3407:: with SMTP id v7ls2403007otb.9.gmail; Fri, 19 Feb
 2021 09:05:21 -0800 (PST)
X-Received: by 2002:a05:6830:3152:: with SMTP id c18mr7641259ots.191.1613754321838;
        Fri, 19 Feb 2021 09:05:21 -0800 (PST)
Date: Fri, 19 Feb 2021 09:05:21 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <59df9104-0929-42c6-a2c8-9014ba45628dn@googlegroups.com>
In-Reply-To: <525126f9-12c3-4c31-9ab4-3d0bfba2f9d6n@googlegroups.com>
References: <525126f9-12c3-4c31-9ab4-3d0bfba2f9d6n@googlegroups.com>
Subject: Re: iface.c:36:21: fatal error: libkmod.h: No such file or
 directory
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_962_148923253.1613754321263"
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

------=_Part_962_148923253.1613754321263
Content-Type: multipart/alternative; 
	boundary="----=_Part_963_74681121.1613754321263"

------=_Part_963_74681121.1613754321263
Content-Type: text/plain; charset="UTF-8"

open-iscsi relies on libkmod, which didn't exist in 3.10 kernel. You'll 
have to use an older open-iscsi, such as 2.0.876.

On Wednesday, February 17, 2021 at 7:58:35 AM UTC-8 Manish Dusane wrote:

> All,
>
> Trying to compile latest open-iscsi-master on 3.10.0-957.10.1.el7.x86_64
> Getting following ilbkmod.h error.  
>
> What am i missing ? 
>
> TIA,
> Manish
>
> $ make
> make -C libopeniscsiusr
> make[1]: Entering directory `<path>/open-iscsi-master/libopeniscsiusr'
> cc -O2 -g -Wall -Werror -Wextra -fvisibility=hidden -fPIC    -c -o iface.o 
> iface.c
> iface.c:36:21: fatal error: libkmod.h: No such file or directory
>  #include <libkmod.h>
>                      ^
> compilation terminated.
> make[1]: *** [iface.o] Error 1
> make[1]: Leaving directory `<path>/open-iscsi-master/libopeniscsiusr'
> make: *** [user] Error 2
> $
>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/59df9104-0929-42c6-a2c8-9014ba45628dn%40googlegroups.com.

------=_Part_963_74681121.1613754321263
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>open-iscsi relies on libkmod, which didn't exist in 3.10 kernel. You'l=
l have to use an older open-iscsi, such as 2.0.876.</div><div><br></div><di=
v class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">On Wednesday=
, February 17, 2021 at 7:58:35 AM UTC-8 Manish Dusane wrote:<br/></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-left: 1p=
x solid rgb(204, 204, 204); padding-left: 1ex;">All,<div><br></div><div>Try=
ing to compile latest open-iscsi-master on=C2=A03.10.0-957.10.1.el7.x86_64<=
/div><div>Getting following ilbkmod.h error.=C2=A0=C2=A0</div><div><br></di=
v><div>What am i missing ?=C2=A0</div><div><br></div><div>TIA,</div><div>Ma=
nish<br><div><br></div><div>$ make<div><div>make -C libopeniscsiusr</div><d=
iv>make[1]: Entering directory `&lt;path&gt;/open-iscsi-master/libopeniscsi=
usr&#39;</div><div>cc -O2 -g -Wall -Werror -Wextra -fvisibility=3Dhidden -f=
PIC=C2=A0 =C2=A0 -c -o iface.o iface.c</div><div>iface.c:36:21: fatal error=
: libkmod.h: No such file or directory</div><div>=C2=A0#include &lt;libkmod=
.h&gt;</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0^</div><div>compilation terminated.</div><div>make[1]: =
*** [iface.o] Error 1</div><div>make[1]: Leaving directory `&lt;path&gt;/op=
en-iscsi-master/libopeniscsiusr&#39;</div><div>make: *** [user] Error 2</di=
v><div>$</div></div></div><div><br></div></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/59df9104-0929-42c6-a2c8-9014ba45628dn%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/59df9104-0929-42c6-a2c8-9014ba45628dn%40googlegroups.com</a>.=
<br />

------=_Part_963_74681121.1613754321263--

------=_Part_962_148923253.1613754321263--
