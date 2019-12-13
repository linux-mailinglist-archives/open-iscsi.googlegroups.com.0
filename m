Return-Path: <open-iscsi+bncBDUI3A7H4EORBW4HZ7XQKGQENH5GTTA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id AED9911E8D5
	for <lists+open-iscsi@lfdr.de>; Fri, 13 Dec 2019 18:01:17 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id n4sf52244pjb.1
        for <lists+open-iscsi@lfdr.de>; Fri, 13 Dec 2019 09:01:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576256476; cv=pass;
        d=google.com; s=arc-20160816;
        b=hrm5J1j8V/mEftXtD3IvCQdls2DjIYMX1364OHuceIaFWJALGP/Q1ZDmVr6TX3wC1s
         rSsRqsOPQ2MsBIciN22vl/epK5a/PZ3fw8Ho8B/CwHCGgIs0KIJ6NlbjTzkc8s88s5Et
         AogkWQ+f8DmQl4vNVuAe2VADLg/nEle9PRRSB5IPqRUFlPDsMmyyuTgVabH9DhV/MckV
         ZzZoMFeokl16o0JkVBTnp6spAY3KyDaRLt5b1SbK+2B7NSRzmdIZAHVeyGoxW6AFkROO
         pGbGGd0rvayFTG+zdeLfKZE7LElchoa4PbeJB4osSITFUfW/WADPS+SFWj0UodIr6tF3
         u+oQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature;
        bh=fr3X4HcHWhoIT34VrT2FXxDrG+fLrZ8/dLKmlUczhzw=;
        b=UIQ0FLMSczH1CH/ArUXf0IjEroXKgGYyXhH7KLbAtC712H7NJhfdC1vMTTZUbZH3iy
         Tc/NvHS55/Xl6gZ3+oJoQ2xA4gJDFKDIK1Tl7aT5XZorIe29nIHcxP2XCtwKMOEfABdh
         GGUGkt52kSNYK1pTgjpOvXYw0MeWqD0wXvK6uihJMZgbKPKQThf+2eRnGxFDtQZzMJHM
         9H6ZkaAglncQPZ5LMk+gezq3yClsu9T7F9KI6hDewnyrp7o498CvOzxPrVzi+FqzOhV/
         ooMo4KHEdro8kF7jT3h0z9HwbKa6Tbnh5THfZKgU48TDKyVYwjuf+DbreuKj79TKyJTX
         YiUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@eyeconsultantspc-com.20150623.gappssmtp.com header.s=20150623 header.b="n2Q78Z/c";
       spf=pass (google.com: domain of robert@eyeconsultantspc.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=robert@eyeconsultantspc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fr3X4HcHWhoIT34VrT2FXxDrG+fLrZ8/dLKmlUczhzw=;
        b=AK6T5nzPedNtQIfxDJdgSgyfEvGX1oWG3qmFo5Q7SZipDVFStRBqtvgQALBFHH9ouC
         Dc9nfYAPaXQ214u+dXJXqGsIB6vkfK2FaCujXOZsG47CST9bAmOCusMG9MT8y8c1bBi9
         PCC+TSfKWw1Hn0N2Rompg391PKt0mwqZj6C+FdsZ0c8lI95/nzZK1w2PqNwCdrQ3IvJg
         vME/EIfK8NZSWYFCxKVh5p/xhtuqEjedWTCPbZ64H+FoOxpMbQw4pFapteSFe+WguEOz
         46hIHvDBq2+MvgY3qV3gk3UkK78sPhcUx4uiL1QzVlEcgpk3WWwfihlj1MCKT8U0NEL3
         HTJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fr3X4HcHWhoIT34VrT2FXxDrG+fLrZ8/dLKmlUczhzw=;
        b=IWxKHt20E9oS/9+YrNXBh42wJCnSWd2kdHefgefy3NmWzoi0XEZiCYlW8dtT95baPe
         QIDrPpo5/ssVBgb29FNwALfwXct+uZ3VcyLQZbqLzstBKsjjlzIUxfFjGlWm0jioYAxo
         vRpttrH84pTYFBdMxAyJXzgZbr7iAxBzccGIprX8lXbnFhhaKOndRysL7iXjwCw1M0wl
         +XO9ne5bh2HI6XMUIPWeuOKzfAtJUhPWp9tAtQu96vwTYpCPGnnIPdeT+3hC8oy/hwBO
         suH41WJ4UiB2mnaq7NRcSb9P7reKwIu6m4iVbJs0ASKgMAM37Ct4XoTllNQbMdCllQBs
         nxQw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUIy7TBv62E7neqPH0CVW7Rlakdl0LSdzM5tQlf4FXEKeeC/JXq
	8vFEIxswPc5HMJE2vfNwjjY=
X-Google-Smtp-Source: APXvYqz/Yn/XJSNqJ/94wJYyg8N2dmx40H9srQ9qvy+59nOqWmjYg4qWg7CCAeyi70Xmw1pdN3dHmg==
X-Received: by 2002:a63:1908:: with SMTP id z8mr445203pgl.350.1576256475844;
        Fri, 13 Dec 2019 09:01:15 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aa7:8048:: with SMTP id y8ls2553465pfm.10.gmail; Fri, 13 Dec
 2019 09:01:15 -0800 (PST)
X-Received: by 2002:a63:dd16:: with SMTP id t22mr417055pgg.307.1576256475324;
        Fri, 13 Dec 2019 09:01:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576256475; cv=none;
        d=google.com; s=arc-20160816;
        b=fSqTP73RY3iOR/X1hBriRPl102TXNMk6wIH0/jZJoGSgsA+5qENZ4tC9SC8m4fype7
         0eOfyxjiTSJvUz9nJ87Xyc14gTxqsVr3/JZ34lik2w0TMuHinJdOE5GcpnKgpmJt/KYW
         ToOwjqL5zzvWalGl6S0FjJrm19USwSl1fHtKD6OPgmghrZsPrrg3ciOb3lGDyyYljwin
         tsp++kL5QVnwChfa3SZuPFJZ9oTvc8PbSRBPlx6CdP+QImcYRh5sruFYF1zO4MqGjorh
         bqI6rsftpzVC/QaMqQ8cIj5vh19ChDFENac3WAaVdyREw+vI9X5moCA78vqBo+Y/jazp
         SsyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=fMMj9CLy4L3oAQMuW9UsJTUM019jdf92K9Yfsjlsn1o=;
        b=o78PXpgSvr90FtOgkasbe240cKCrHvl9zw55OehG6t20C3dJZHviTbsIrQQWijH7CL
         /vVY0UItXDvZr8HpCjCuE1lGzrNoL8TnXKyQr+1aXZaU8MI8cetzhzgMxxkFRG3+079n
         5D9Q5ozGQtZpog9EfmVMEiXY2TZAJ1vDu4dCYy2MKoWlKcbp0cr6yU7ry0mJ6Mx0pK4D
         l85MpwnwxeevmJqAObxrGvzBbgHvSupra0a/XH3vjGAtJlGWGwSg7gkcwIjYh9Bxkr3P
         WTSP+TkF7o7dwEOhTFlwLCZFzmGVCSFtry4AfxV5EOcvJWVyIMOOjNPb/b+zKDB9eBha
         Bvaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@eyeconsultantspc-com.20150623.gappssmtp.com header.s=20150623 header.b="n2Q78Z/c";
       spf=pass (google.com: domain of robert@eyeconsultantspc.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=robert@eyeconsultantspc.com
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com. [2607:f8b0:4864:20::d34])
        by gmr-mx.google.com with ESMTPS id g17si247908plq.0.2019.12.13.09.01.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2019 09:01:15 -0800 (PST)
Received-SPF: pass (google.com: domain of robert@eyeconsultantspc.com designates 2607:f8b0:4864:20::d34 as permitted sender) client-ip=2607:f8b0:4864:20::d34;
Received: by mail-io1-xd34.google.com with SMTP id t26so238863ioi.13
        for <open-iscsi@googlegroups.com>; Fri, 13 Dec 2019 09:01:15 -0800 (PST)
X-Received: by 2002:a5d:9ed0:: with SMTP id a16mr8052748ioe.157.1576256474075;
 Fri, 13 Dec 2019 09:01:14 -0800 (PST)
MIME-Version: 1.0
References: <372db1a3-424d-4063-bcdb-ccb0b821df0b@googlegroups.com>
 <1cf29039-73ae-46df-8e0e-76c8f17fed15@googlegroups.com> <5bdc3a89-e685-453d-8908-5a5c0e2f7332@googlegroups.com>
 <CAGJK1K=U0UsEn9Sv0=tOFo2hgBeWEE4gDaRtsgEg3-08g829BA@mail.gmail.com>
In-Reply-To: <CAGJK1K=U0UsEn9Sv0=tOFo2hgBeWEE4gDaRtsgEg3-08g829BA@mail.gmail.com>
From: Robert ECEO Townley <robert@eyeconsultantspc.com>
Date: Fri, 13 Dec 2019 11:01:03 -0600
Message-ID: <CACE8Fw=30hiKc=Rm4=k_2vPm+zTzponTMKt2um9xTmOc-qoTgA@mail.gmail.com>
Subject: Re: reboot hangs with "Reached target shutdown", who can help me?
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000003679db059998cfa3"
X-Original-Sender: robert@eyeconsultantspc.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@eyeconsultantspc-com.20150623.gappssmtp.com header.s=20150623
 header.b="n2Q78Z/c";       spf=pass (google.com: domain of
 robert@eyeconsultantspc.com designates 2607:f8b0:4864:20::d34 as permitted
 sender) smtp.mailfrom=robert@eyeconsultantspc.com
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

--0000000000003679db059998cfa3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you enter the mount command at this point, what mount points are still
mounted?   Screenshot has some contradictions.



On Thu, Dec 12, 2019 at 8:08 PM can zhu <zhucan.k8s@gmail.com> wrote:

>
> @The Lee-Man  Thanks, In my environment=EF=BC=8C the default value of the
> node.startup is automatic in config
>
>
>
> The Lee-Man <leeman.duncan@gmail.com> =E4=BA=8E2019=E5=B9=B412=E6=9C=8813=
=E6=97=A5=E5=91=A8=E4=BA=94 =E4=B8=8A=E5=8D=885:17=E5=86=99=E9=81=93=EF=BC=
=9A
>
>> Okay, I checked CentOS 8, and the services seem very similar to what I'm
>> familiar with.
>>
>> You do indeed need to make sure your nodes have startup set to automatic=
.
>>
>> Use something like:
>>
>> > zsh> sudo iscsiadm -m node --op update --name 'node.conn[0].startup'
>> --value automatic
>>
>> to update all nodes to start and stop automatically, and update startup
>> in /etc/iscsi/iscsid.conf to change the default.
>>
>> --
>> You received this message because you are subscribed to the Google Group=
s
>> "open-iscsi" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n
>> email to open-iscsi+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit
>> https://groups.google.com/d/msgid/open-iscsi/5bdc3a89-e685-453d-8908-5a5=
c0e2f7332%40googlegroups.com
>> <https://groups.google.com/d/msgid/open-iscsi/5bdc3a89-e685-453d-8908-5a=
5c0e2f7332%40googlegroups.com?utm_medium=3Demail&utm_source=3Dfooter>
>> .
>>
> --
> You received this message because you are subscribed to the Google Groups
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/open-iscsi/CAGJK1K%3DU0UsEn9Sv0%3DtOFo2=
hgBeWEE4gDaRtsgEg3-08g829BA%40mail.gmail.com
> <https://groups.google.com/d/msgid/open-iscsi/CAGJK1K%3DU0UsEn9Sv0%3DtOFo=
2hgBeWEE4gDaRtsgEg3-08g829BA%40mail.gmail.com?utm_medium=3Demail&utm_source=
=3Dfooter>
> .
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/CACE8Fw%3D30hiKc%3DRm4%3Dk_2vPm%2BzTzponTMKt2um9xTmOc-qoTgA%40ma=
il.gmail.com.

--0000000000003679db059998cfa3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">If you enter the mount command at this point, what m=
ount points are still mounted? =C2=A0 Screenshot has some contradictions.</=
div></div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, De=
c 12, 2019 at 8:08 PM can zhu &lt;<a href=3D"mailto:zhucan.k8s@gmail.com">z=
hucan.k8s@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div dir=3D"ltr"><br><table cellpadding=3D"0" style=3D"border-collapse:coll=
apse;margin-top:0px;width:auto;font-family:Roboto,RobotoDraft,Helvetica,Ari=
al,sans-serif;font-size:14px;letter-spacing:0.2px;display:block"><tbody sty=
le=3D"display:block"><tr style=3D"height:auto;display:flex"><td style=3D"wh=
ite-space:nowrap;padding:0px;vertical-align:top;width:703.984px;line-height=
:20px;display:block;max-height:20px"><table cellpadding=3D"0" style=3D"bord=
er-collapse:collapse;table-layout:fixed;width:703px"><tbody><tr><td style=
=3D"display:flex"><h3 style=3D"overflow:hidden;font-size:0.75rem;font-weigh=
t:inherit;margin:inherit;text-overflow:ellipsis;letter-spacing:0.3px;color:=
rgb(95,99,104);line-height:20px"><span style=3D"outline:none"><span name=3D=
"The Lee-Man" style=3D"color:rgb(32,33,36);font-size:0.875rem;font-weight:b=
old;display:inline;vertical-align:top;letter-spacing:0.2px;line-height:20px=
">@The Lee-Man=C2=A0 Thanks, In my environment=EF=BC=8C the default value o=
f the node.startup is automatic in config</span></span></h3><div><span styl=
e=3D"outline:none"><span name=3D"The Lee-Man" style=3D"color:rgb(32,33,36);=
font-size:0.875rem;font-weight:bold;display:inline;vertical-align:top;lette=
r-spacing:0.2px;line-height:20px"><br></span></span></div><div><span style=
=3D"outline:none"><span name=3D"The Lee-Man" style=3D"color:rgb(32,33,36);f=
ont-size:0.875rem;font-weight:bold;display:inline;vertical-align:top;letter=
-spacing:0.2px;line-height:20px"><br></span></span></div></td></tr></tbody>=
</table></td></tr></tbody></table></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">The Lee-Man &lt;<a href=3D"mailto:leeman.=
duncan@gmail.com" target=3D"_blank">leeman.duncan@gmail.com</a>&gt; =E4=BA=
=8E2019=E5=B9=B412=E6=9C=8813=E6=97=A5=E5=91=A8=E4=BA=94 =E4=B8=8A=E5=8D=88=
5:17=E5=86=99=E9=81=93=EF=BC=9A<br></div></div><div class=3D"gmail_quote"><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Okay=
, I checked CentOS 8, and the services seem very similar to what I&#39;m fa=
miliar with.</div><div><br></div><div>You do indeed need to make sure your =
nodes have startup set to automatic.</div><div><br></div><div>Use something=
 like:</div><div><br></div><div>&gt; zsh&gt; sudo iscsiadm -m node --op upd=
ate --name &#39;node.conn[0].startup&#39; --value automatic</div><div><br><=
/div><div>to update all nodes to start and stop automatically, and update s=
tartup in /etc/iscsi/iscsid.conf to change the default.<br></div></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/5bdc3a89-e685-453d-8908-5a5c0e2f7332%40googlegroups.c=
om?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">https://gr=
oups.google.com/d/msgid/open-iscsi/5bdc3a89-e685-453d-8908-5a5c0e2f7332%40g=
ooglegroups.com</a>.<br>
</blockquote></div><div class=3D"gmail_quote"></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAGJK1K%3DU0UsEn9Sv0%3DtOFo2hgBeWEE4gDaRtsgEg3-08g829=
BA%40mail.gmail.com?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_=
blank">https://groups.google.com/d/msgid/open-iscsi/CAGJK1K%3DU0UsEn9Sv0%3D=
tOFo2hgBeWEE4gDaRtsgEg3-08g829BA%40mail.gmail.com</a>.<br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CACE8Fw%3D30hiKc%3DRm4%3Dk_2vPm%2BzTzponTMKt2um9xTmOc=
-qoTgA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gro=
ups.google.com/d/msgid/open-iscsi/CACE8Fw%3D30hiKc%3DRm4%3Dk_2vPm%2BzTzponT=
MKt2um9xTmOc-qoTgA%40mail.gmail.com</a>.<br />

--0000000000003679db059998cfa3--
