Return-Path: <open-iscsi+bncBC755V5RXMKBBZG32H4QKGQE625VRPY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id E95992430C8
	for <lists+open-iscsi@lfdr.de>; Thu, 13 Aug 2020 00:32:05 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id d24sf1970261oop.5
        for <lists+open-iscsi@lfdr.de>; Wed, 12 Aug 2020 15:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Qodnv/b5GFbEMjhFkGT3GwvtevzGB7y3rPvaydWIOi8=;
        b=q7/9wDezH5V/KhHFhUGEjVk6DnT4Ma2ppaQAVlSsdWE5JURg081fANNmYnJ0xxLNiW
         obJUrirXW8tMBVnfA9e4baHkS1eFcKuJCY3OuOxGLEWUqneXLHCOrUnwBtbDXrgNSdLS
         Qfeb1ro1vE/xViPIwUsGlU6jDsGcn6thhj9xEb/KhHXmk2vq9h8tAeGIUn3E/f7JQT8y
         a2B9NH56r876Y4nZZvP1RtJe6tHq4OCjMMPoC9rmBNV3VkcLmEpiAusTVGzXGJfe/fVA
         Ad+8RwZ2YJEr8ZVJjDjGhQwZqdfttboL0nZUHoh8XAXYuqKg3MLSwR1krv3CDCzm6ecI
         WhLg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Qodnv/b5GFbEMjhFkGT3GwvtevzGB7y3rPvaydWIOi8=;
        b=ujhcpqzybkPxEHSHG7QkH5kx6ciNhrlHZpOfvrVDlmcdQh8oBmlD16GB02O1i4P6xI
         yXmuuhC8CsID51P7KMK3tFzEGsIIIaNoGm3QQ18t+iIunUkseCyvS6ZfuS7wSTgXFFvn
         tg0t7WqVN/hyuAwPEgs9AN9J0yYiieD3ZUW8gkHmH41VxDkWAJf+UVuLcBhzcMW1Yu/u
         jH9tQ1mS1wQiXxd76cdIu0H8yIkUAV9dRtM0AlnnCuvzVrExIyzsUE7prFb61MmNl6uR
         i05YjZHliJ8i6EsCBtsOJZetqOefJ+lLSTSYJuQeq4ScDcRVdG0bFQBncfQcRYRvT3yq
         N2NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Qodnv/b5GFbEMjhFkGT3GwvtevzGB7y3rPvaydWIOi8=;
        b=cP5jOm3BE7QnRJq7wk1o2+NZLG8NOin/dU2Jo4TW0n2CSoybuBXlhseg5sUpRtsbIP
         sssBPoDdOyyc4Xkg07Ok/fiCulgVlktLkH1/z5bxlX7k1gcvYRtaEVNbz8wmE1mlfDwZ
         FHSwyqpHLf3FMVp19gU50bVSWfXJUDEAdpPzStcruqFRS7B9Dyu437BeGrfF1qJ4WnA9
         jiVoNnbiq7grCz86eFWKHtZBm6Phw0QU97u63Oi90KqxkzHlg0QUWKQN7N/OIQdIQ/az
         JgDBswkugTOwVi+wRh/9pu/7/lvhhAgVaqNyFw+HUe3H4lIeTlMN1Wwojxkxo2UfJBJk
         26Dw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530aFRU23GR1jBrkmLsVce7SHZo1oZE2Czekni0mxkEwqaczXe5B
	TMLlfEN3PHsE9HEUsnVjHog=
X-Google-Smtp-Source: ABdhPJx4wHEoi4IxTEFrFluf8BznwgQwQx4se47t+B8hSSwnIjOgVsiB6jPe/lNz+5owNx7hhjAdpg==
X-Received: by 2002:aca:51c5:: with SMTP id f188mr1086758oib.114.1597271524486;
        Wed, 12 Aug 2020 15:32:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6830:1d90:: with SMTP id y16ls798463oti.10.gmail; Wed,
 12 Aug 2020 15:32:04 -0700 (PDT)
X-Received: by 2002:a05:6830:60f:: with SMTP id w15mr1710671oti.85.1597271524044;
        Wed, 12 Aug 2020 15:32:04 -0700 (PDT)
Date: Wed, 12 Aug 2020 15:32:03 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <a86b42a0-bbc8-426e-9926-e87b6cb1a998o@googlegroups.com>
In-Reply-To: <a3584ce4-5786-425a-91a5-d1b6e7d65bbdn@googlegroups.com>
References: <cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn@googlegroups.com>
 <CAK3e-EYtSezXByd_YavtAVGMk9S_i7==eAYSABLxeSn9h+tE5w@mail.gmail.com>
 <bf75d5e8-f4ed-4a16-86a8-ab78d0cac1cco@googlegroups.com>
 <0aed6f01-5c36-46db-af27-5b6c353fd7b0n@googlegroups.com>
 <3d3c007c-e569-4932-b7b8-b580b82fe5f9o@googlegroups.com>
 <a3584ce4-5786-425a-91a5-d1b6e7d65bbdn@googlegroups.com>
Subject: Re: Concurrent logins to different interfaces of same iscsi target
 and login timeout
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2321_307452855.1597271523444"
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

------=_Part_2321_307452855.1597271523444
Content-Type: multipart/alternative; 
	boundary="----=_Part_2322_128552243.1597271523445"

------=_Part_2322_128552243.1597271523445
Content-Type: text/plain; charset="UTF-8"

On Sunday, August 9, 2020 at 11:08:50 AM UTC-7, Amit Bawer wrote:
>
> ...
>
>>
>>> The other option is to use one login-all call without parallelism, but 
>>> that would have other implications on our system to consider.
>>>
>>
>> Such as? 
>>
> As mentioned above,  unless there is a way to specify a list of targets 
> and portals for a single login (all) command.
>
>>
>>> Your answers would be helpful once again.
>>>
>>> Thanks,
>>> - Amit
>>>
>>>
>> You might be interested in a new feature I'm considering adding to 
>> iscsiadm to do asynchronous logins. In other words, the iscsiadm could, 
>> when asked to login to one or more targets, would send the login request to 
>> the targets, then return success immediately. It is then up to the end-user 
>> (you in this case) to poll for when the target actually shows up.
>>
> This sounds very interesting, but probably will be available to us only on 
> later RHEL releases, if chosen to be delivered downstream.
> At present it seems we can only use the login-all way or logins in a 
> dedicated threads per target-portal.
>
>>
>> ...
>>
>
So you can only use RH-released packages? That's fine with me, but I'm 
asking you to test a new feature and see if it fixes your problems. If it 
helped, I would add up here in this repo, and redhat would get it by 
default when they updated, which they do regularly, as does my company 
(SUSE).

Just as a "side" point, I wouldn't attack your problem by manually listing 
nodes to login to.

It does seem as if you assume you are the only iscsi user on the system. In 
that case, you have complete control of the node database. Assuming your 
targets do not change, you can set up your node database once and never 
have to discover iscsi targets again. Of course if targets change, you can 
update your node database, but only as needed, i.e. full discovery 
shouldn't be needed each time you start up, unless targets are really 
changing all the time in your environment.

If you do discovery and have nodes in your node database you don't like, 
just remove them.

Another point about your scheme: you are setting each node's 'startup' to 
'manual', but manual is the default, and since you seem to own the 
open-iscsi code on this system, you can ensure the default is manual. 
Perhaps because this is a test?

So, again, I ask you if you will test the async login code? It's really not 
much extra work -- just a "git clone" and a "make install" (mostly). If 
not, the async feature may make it into iscsiadm any way, some time soon, 
but I'd really prefer other testers for this feature before that.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/a86b42a0-bbc8-426e-9926-e87b6cb1a998o%40googlegroups.com.

------=_Part_2322_128552243.1597271523445
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Sunday, August 9, 2020 at 11:08:50 AM UTC-7, Amit Bawer=
 wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.=
8ex;border-left: 1px #ccc solid;padding-left: 1ex;">...<br><div class=3D"gm=
ail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0;margin-left:0.8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div><br></div><div>The other option i=
s to use one login-all call without parallelism, but that would have other =
implications on our system to consider.<br></div></blockquote><div><br></di=
v></div><div dir=3D"ltr"><div>Such as? <br></div></div></blockquote><div>As=
 mentioned above,=C2=A0 unless there is a way to specify a list of targets =
and portals for a single login (all) command.<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div></div></div><div dir=3D"ltr">=
<blockquote class=3D"gmail_quote" style=3D"margin:0;margin-left:0.8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div><br>Your answers would be help=
ful once again.</div><div><br>Thanks,<br>- Amit</div><br></blockquote><div>=
<br></div></div><div dir=3D"ltr"><div>You might be interested in a new feat=
ure I&#39;m considering adding to iscsiadm to do asynchronous logins. In ot=
her words, the iscsiadm could, when asked to login to one or more targets, =
would send the login request to the targets, then return success immediatel=
y. It is then up to the end-user (you in this case) to poll for when the ta=
rget actually shows up.</div></div></blockquote><div>This sounds very inter=
esting, but probably will be available to us only on later RHEL releases, i=
f chosen to be delivered downstream.</div><div>At present it seems we can o=
nly use the login-all way or logins in a dedicated threads per target-porta=
l.<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv><br></div>...</div></blockquote></div></blockquote><div><br></div><div>S=
o you can only use RH-released packages? That&#39;s fine with me, but I&#39=
;m asking you to test a new feature and see if it fixes your problems. If i=
t helped, I would add up here in this repo, and redhat would get it by defa=
ult when they updated, which they do regularly, as does my company (SUSE).<=
/div><div><br></div><div>Just as a &quot;side&quot; point, I wouldn&#39;t a=
ttack your problem by manually listing nodes to login to.</div><div><br></d=
iv><div>It does seem as if you assume you are the only iscsi user on the sy=
stem. In that case, you have complete control of the node database. Assumin=
g your targets do not change, you can set up your node database once and ne=
ver have to discover iscsi targets again. Of course if targets change, you =
can update your node database, but only as needed, i.e. full discovery shou=
ldn&#39;t be needed each time you start up, unless targets are really chang=
ing all the time in your environment.</div><div><br></div><div>If you do di=
scovery and have nodes in your node database you don&#39;t like, just remov=
e them.</div><div><br></div><div>Another point about your scheme: you are s=
etting each node&#39;s &#39;startup&#39; to &#39;manual&#39;, but manual is=
 the default, and since you seem to own the open-iscsi code on this system,=
 you can ensure the default is manual. Perhaps because this is a test?</div=
><div><br></div><div>So, again, I ask you if you will test the async login =
code? It&#39;s really not much extra work -- just a &quot;git clone&quot; a=
nd a &quot;make install&quot; (mostly). If not, the async feature may make =
it into iscsiadm any way, some time soon, but I&#39;d really prefer other t=
esters for this feature before that.<br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/a86b42a0-bbc8-426e-9926-e87b6cb1a998o%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/a86b42a0-bbc8-426e-9926-e87b6cb1a998o%40googlegroups.com</a>.=
<br />

------=_Part_2322_128552243.1597271523445--

------=_Part_2321_307452855.1597271523444--
