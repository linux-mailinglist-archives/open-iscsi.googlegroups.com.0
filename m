Return-Path: <open-iscsi+bncBC755V5RXMKBBRMC6DZQKGQE447DI5Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED8E19352C
	for <lists+open-iscsi@lfdr.de>; Thu, 26 Mar 2020 02:11:34 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id f12sf3504614qvw.1
        for <lists+open-iscsi@lfdr.de>; Wed, 25 Mar 2020 18:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=x8bXRNJ1UjO100GM1mZ1estqMGsMdntKfb/7I2AFnxY=;
        b=nPL1Io57hKzN2GanGUwsBW6C+2JoS8Ft1Rwmo1nA1N9xuEleG6nwHazyRBUKC/WPk0
         Qa6StvwgrUsqj1acy0LqwCnAiTR8ZlVtguv4kw/0gu8u2UFxljRdjmLWRRDTO3Nn8FrA
         tZaTbG5VCH5tfTKFwA6NGEGA4xjW1274hPa/5tVHuSkZDwrBggm4kEJ7PfFN7S1LRWhd
         fX1FYIsMHGPMrbsV5REnUEu9rxOKQilDBtm21HK0T9cVoSyN8MuynoNlW9i1wR5O9q5D
         1Tsf7dZRtXaEgKWG+EPO5AFljuZ64qKqIlyiem046GRClNqt8NSdwIUhgXekh5iKNn/O
         0xCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x8bXRNJ1UjO100GM1mZ1estqMGsMdntKfb/7I2AFnxY=;
        b=HoChyiedMpOkRs2o/fU259Xbwub2kvjAekthQDtXYr4tRKoZbDVRs0TRdVLUhcTsAe
         qfqefdBlQp9uENMS27gMSgpv+rUUQRZSToYR/0+NhlfcS5d2vNW68ecv0JzSt45vn1zT
         Z8rkcOuKy4O5bTEDDCI9QfHapQUZZP3YyL/gJom7Tl48/iMlXAru/HVbr9VR7oFZvozm
         263SjiDWfN2v6/LNj2Cvqwrx7LgtR+W6Kd8wOA09q9jtTBDTU62syFv0xsbEnhNlW94r
         uoePsGD2OzXsQgeOurq+T1b0sgyBUDWUOdW38JmsJbz5wpNMnLtq1ZZ0q/nY8xT9vn5v
         W0dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x8bXRNJ1UjO100GM1mZ1estqMGsMdntKfb/7I2AFnxY=;
        b=NR6srJlRMEsoY6DsQ1kwEpAMbwLJVFlZKOYX9dbb/W2+ZsacPDEZzSilg0lQF+o6pR
         WUCIkMrosAHYt4LXGZuGDUgTZ3srFknHeUNmgsMjggDXUM5Yw82yGGCNV3658OjdI3of
         uZ7Ud8N55TtJd7pFOfJgmLSErLS+CqsBlt4bW2a7hHo3mT+gx5UZS9owmV2GkH20GsQ1
         Z3L+wYCgsdV/CCs4T2VvLy29kZRoMPRpuquRGaOnC4laLkdGn9wGGQtG09F4JXTPtHM7
         wyjgJbj3HAmZtGQXCaEVER5ISHrxbY30lOE0LK+MI6ARBC/VcqJMSTuzy14nnVven/er
         kxJw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANhLgQ2YCYckZOtlSMVK+WsbqEh78/FK7QQCXyz4pFnImftuCRz3+k9R
	N0j3T4/wmy4dbCMTTLgWips=
X-Google-Smtp-Source: ADFU+vuKKvn7KVJ5rwNsLOHjBKuFAsQst2vq/iEoOIP6WaVk8b+vNLnkmnFvu0/HpiuNMpHzEZSBHA==
X-Received: by 2002:a05:6214:68f:: with SMTP id r15mr5736914qvz.96.1585185093248;
        Wed, 25 Mar 2020 18:11:33 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:a603:: with SMTP id p3ls1782796qke.6.gmail; Wed, 25 Mar
 2020 18:11:32 -0700 (PDT)
X-Received: by 2002:a37:9f42:: with SMTP id i63mr5890617qke.192.1585185092752;
        Wed, 25 Mar 2020 18:11:32 -0700 (PDT)
Date: Wed, 25 Mar 2020 18:11:31 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <c6cb350a-f8d2-486b-888c-dfc6e5b69a79@googlegroups.com>
In-Reply-To: <6ba31be9-caa5-2d7f-53f1-180986658ec1@huawei.com>
References: <6ba31be9-caa5-2d7f-53f1-180986658ec1@huawei.com>
Subject: Re: [PATCH] iscsi-iname: fix iscsi-iname -p access NULL pointer
 without given IQN prefix
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2104_2072377925.1585185091959"
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

------=_Part_2104_2072377925.1585185091959
Content-Type: multipart/alternative; 
	boundary="----=_Part_2105_240131535.1585185091959"

------=_Part_2105_240131535.1585185091959
Content-Type: text/plain; charset="UTF-8"

Thank you very much for this bug report and suggested patch, but I cleaned 
up the code and fixed it a little differently.

On Wednesday, March 18, 2020 at 6:46:06 PM UTC-7, wubo40 wrote:
>
> From: Wu Bo <wubo40@huawei.com> 
>
> iscsi-iname -p access NULL pointer without give IQN prefix. 
>
> # iscsi-iname -p 
> Segmentation fault 
>
> Signed-off-by: Wu Bo <wubo40@huawei.com> 
> --- 
>   utils/iscsi-iname.c | 2 +- 
>   1 file changed, 1 insertion(+), 1 deletion(-) 
>
> diff --git a/utils/iscsi-iname.c b/utils/iscsi-iname.c 
> index da850dc..7df7bb0 100644 
> --- a/utils/iscsi-iname.c 
> +++ b/utils/iscsi-iname.c 
> @@ -69,7 +69,7 @@ main(int argc, char *argv[]) 
>               exit(0); 
>           } else if ( strcmp(prefix, "-p") == 0 ) { 
>               prefix = argv[2]; 
> -            if (strnlen(prefix, PREFIX_MAX_LEN + 1) > PREFIX_MAX_LEN) { 
> +            if (prefix && (strnlen(prefix, PREFIX_MAX_LEN + 1) > 
> PREFIX_MAX_LEN)) { 
>                   printf("Error: Prefix cannot exceed %d " 
>                          "characters.\n", PREFIX_MAX_LEN); 
>                   exit(1); 
> -- 
> 2.21.0 
>
>
>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/c6cb350a-f8d2-486b-888c-dfc6e5b69a79%40googlegroups.com.

------=_Part_2105_240131535.1585185091959
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you very much for this bug report and suggested patc=
h, but I cleaned up the code and fixed it a little differently.<br><br>On W=
ednesday, March 18, 2020 at 6:46:06 PM UTC-7, wubo40 wrote:<blockquote clas=
s=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #c=
cc solid;padding-left: 1ex;">From: Wu Bo &lt;<a href=3D"mailto:wubo40@huawe=
i.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;m=
ailto:wubo40@huawei.com&#39;;return true;" onclick=3D"this.href=3D&#39;mail=
to:wubo40@huawei.com&#39;;return true;">wubo40@huawei.com</a>&gt;
<br>
<br>iscsi-iname -p access NULL pointer without give IQN prefix.
<br>
<br># iscsi-iname -p
<br>Segmentation fault
<br>
<br>Signed-off-by: Wu Bo &lt;<a href=3D"mailto:wubo40@huawei.com" target=3D=
"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mailto:wubo40@hua=
wei.com&#39;;return true;" onclick=3D"this.href=3D&#39;mailto:wubo40@huawei=
.com&#39;;return true;">wubo40@huawei.com</a>&gt;
<br>---
<br>=C2=A0=C2=A0utils/iscsi-iname.c | 2 +-
<br>=C2=A0=C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>
<br>diff --git a/utils/iscsi-iname.c b/utils/iscsi-iname.c
<br>index da850dc..7df7bb0 100644
<br>--- a/utils/iscsi-iname.c
<br>+++ b/utils/iscsi-iname.c
<br>@@ -69,7 +69,7 @@ main(int argc, char *argv[])
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ex=
it(0);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 } else if ( strcmp(pr=
efix, &quot;-p&quot;) =3D=3D 0 ) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 pr=
efix =3D argv[2];
<br>-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if (strnlen(p=
refix, PREFIX_MAX_LEN + 1) &gt; PREFIX_MAX_LEN) {
<br>+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if (prefix &a=
mp;&amp; (strnlen(prefix, PREFIX_MAX_LEN + 1) &gt;=20
<br>PREFIX_MAX_LEN)) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0 printf(&quot;Error: Prefix cannot exceed %d &quot;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot;characters.\n=
&quot;, PREFIX_MAX_LEN);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0 exit(1);
<br>--=20
<br>2.21.0
<br>
<br>
<br>
<br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/c6cb350a-f8d2-486b-888c-dfc6e5b69a79%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/c6cb350a-f8d2-486b-888c-dfc6e5b69a79%40googlegroups.com</a>.<b=
r />

------=_Part_2105_240131535.1585185091959--

------=_Part_2104_2072377925.1585185091959--
