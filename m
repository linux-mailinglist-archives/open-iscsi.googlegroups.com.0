Return-Path: <open-iscsi+bncBC755V5RXMKBBFEKZLXQKGQEHVOBLYI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FBDC11D532
	for <lists+open-iscsi@lfdr.de>; Thu, 12 Dec 2019 19:21:09 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id n128sf1936673qke.19
        for <lists+open-iscsi@lfdr.de>; Thu, 12 Dec 2019 10:21:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=x/gKqfvDEMWT/kJNTUcSI6vxSrk7SVj30khTgYhwG+w=;
        b=YxOaKfzHMlADbUFx7c802wWop/FjyNkYKCjQaecWWDm7p2o7nrBPUddLcJrcyjW1O9
         3bQddMsU5ov4OqMRfn9sp/CMFV7qWQl2QGLmEcxLwIrwWzDzfwUHSrxlikBSfaoEcsms
         UXyz5s5G9PdvMIFWC2fxh4cImuEVx9aSKUDkxcI0LuJVBMY/oM4pnfD6ZE0QRscP3j49
         NvnPlOWA4hUsmlA/QAsW38aGQYp77S+0LxRovkKcpJD230xzmFwkqRAnHKWLUAaMm8pC
         0JU+hFD1aWQinYXDj2DilFR475xpn8dYc3VIXVoiALlqMu62mYhN1uCtLwoGgpjRPSo1
         Phgw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x/gKqfvDEMWT/kJNTUcSI6vxSrk7SVj30khTgYhwG+w=;
        b=h9JQ18M9zATc/ENlRelcZwzjIDxjnMNBiuI6HOz8iWZo5F5LofnQ/Bd9yDnMj/2Fed
         lGBDPDTzXnNMa/+kqw3VRwhFLKeOz2cNGgXIaEVzGAjlBmyqo/VaM0TABg9gb4btYWps
         da8HfFuN9MKYOjfzurqqvpng9T1GyowRCtF+lYQ10JOe3wlccG14P12DItk6H30svRyv
         esIS9frYl4XPmQ/bZ9Dglb+FG1kk4dSFGl+gu5RXvhltCTyzHWyXZu6qV+BEWWBQr2Oy
         Z7IvDbjWs2YJXT7R91/EBcIRjKffgXzzYv3qR+92m5KsccsiAlvQEyi/PJaB5V8QeEDL
         WYKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x/gKqfvDEMWT/kJNTUcSI6vxSrk7SVj30khTgYhwG+w=;
        b=t/jY3vjQKeb9RManmr5y4FqOc9DOE77kgPJddx8bHFIB/A+7btayI2n1qZo4npw991
         EPQtcYhq5FAc5oFjvjzOtA8LDIPaBnFqpLlQqi/jbIeiiE7mx36P6V2Ep2VoPPbBVfm5
         ZLIRPRIt0Dv0mWRYAu2VMo5VQBqUWhD/8lAPnoqGntNS6lD4ur4zc08R9Yo6q7ZmCOJQ
         eizcAsx2vHLUnteo9HjCA15g6S7fmJvpNKgtk7zs0g+8ycjUinTPQLmE2a1135IsIwuQ
         CDWo2C9BJMa8UPtNfgaxLuN8J8Su7gYB6IZLyYDZwRoLaQJLwFIpwTVNUjZAtYcNznex
         lHRg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXIoyW85Wxmj+epGJUIRdufAE6uiR1ZFsf7KPWtinOwq4WoZ3Zv
	7fKVTpMXPZ2+1QlCGsQIAXw=
X-Google-Smtp-Source: APXvYqwhYS36zcg5XKlijaCcgzkGAUxUXGj37aQFZlflV0uvo0jPrGB2S4jff3xt3FD6VMvFfONWgg==
X-Received: by 2002:ae9:ec0a:: with SMTP id h10mr8760170qkg.303.1576174868479;
        Thu, 12 Dec 2019 10:21:08 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:ac11:: with SMTP id e17ls1910960qkm.7.gmail; Thu, 12 Dec
 2019 10:21:08 -0800 (PST)
X-Received: by 2002:a37:8306:: with SMTP id f6mr9543540qkd.372.1576174867817;
        Thu, 12 Dec 2019 10:21:07 -0800 (PST)
Date: Thu, 12 Dec 2019 10:21:06 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <1cf29039-73ae-46df-8e0e-76c8f17fed15@googlegroups.com>
In-Reply-To: <372db1a3-424d-4063-bcdb-ccb0b821df0b@googlegroups.com>
References: <372db1a3-424d-4063-bcdb-ccb0b821df0b@googlegroups.com>
Subject: Re: reboot hangs with "Reached target shutdown", who can help me?
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_5756_591835356.1576174866715"
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

------=_Part_5756_591835356.1576174866715
Content-Type: multipart/alternative; 
	boundary="----=_Part_5757_408016507.1576174866715"

------=_Part_5757_408016507.1576174866715
Content-Type: text/plain; charset="UTF-8"

On Tuesday, December 10, 2019 at 6:25:00 AM UTC-8, can zhu wrote:
>
> os version:
>
> CentOS Linux release 7.4.1708 (Core)
>
> kernel version:  
>
> 3.10.0-693.el7.x86_64
>
>
> systemd version:
>
> *systemd*-219-42.el7.x86_64
>
>
> Mount iscsi devices on the node(iscsi client node) and reboot os, hangs:
> ...
>

Hello:

Such issue are common if the proper sequencing is not followed when 
shutting down iSCSI connections.

One has to (in order):


   - if iscsi devices are being used, stop using them. That generally means 
   unmounting any filesystems that use the devices.
   - logout of the iSCSI connection, i.e. end the iscsi session cleanly
   - stop the iscsi daemon
   - now the network can be shutdown

And this of course assumes your target(s) are on other systems that are not 
being shut down.

As mentioned by Ulrich, this sequencing is now handled by systemd on most 
Linux systems. And the way in which this is handled is that these different 
layers are handled by different services. For example, on SUSE, the daemon 
is controlled by iscsid.socket and iscsid.service, and the login/logout is 
handled by iscsi.service.

I do not have a CentOS 7 system, but I'm downloading CentOS 8 to see how RH 
has set up the iSCSI services there.

But, at a low level, you must have the "startup" value set to "automatic" 
for targets to be disconnected automatically at shutdown time. So you 
should be able to run:

> zsh> sudo iscsiadm -m node --op show | fgrep startup

to see the startup value.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1cf29039-73ae-46df-8e0e-76c8f17fed15%40googlegroups.com.

------=_Part_5757_408016507.1576174866715
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Tuesday, December 10, 2019 at 6:25:00 AM UTC-8, can zhu=
 wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.=
8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div><div><font size=3D=
"4">os version:</font></div><div>







<p><span>CentOS Linux release 7.4.1708 (Core)</span></p></div><font size=3D=
"4"><div><font size=3D"4"><br></font></div>kernel version:=C2=A0
</font>






<p><span>3.10.0-693.el7.x86_64</span></p><p><span><br></span></p><p><span>s=
ystemd version:</span></p><p>







</p><p><span><b>systemd</b></span><span>-219-42.el7.x86_64</span></p><p><br=
></p><p>Mount iscsi devices on the node(iscsi client node) and reboot os, h=
angs:</p>...</div></blockquote><div><br></div><div>Hello:</div><div><br></d=
iv><div>Such issue are common if the proper sequencing is not followed when=
 shutting down iSCSI connections.</div><div><br></div><div>One has to (in o=
rder):</div><div><br></div><div><ul><li>if iscsi devices are being used, st=
op using them. That generally means unmounting any filesystems that use the=
 devices.</li><li>logout of the iSCSI connection, i.e. end the iscsi sessio=
n cleanly</li><li>stop the iscsi daemon</li><li>now the network can be shut=
down</li></ul><div>And this of course assumes your target(s) are on other s=
ystems that are not being shut down.</div><div><br></div><div>As mentioned =
by Ulrich, this sequencing is now handled by systemd on most Linux systems.=
 And the way in which this is handled is that these different layers are ha=
ndled by different services. For example, on SUSE, the daemon is controlled=
 by iscsid.socket and iscsid.service, and the login/logout is handled by is=
csi.service.</div><div><br></div><div>I do not have a CentOS 7 system, but =
I&#39;m downloading CentOS 8 to see how RH has set up the iSCSI services th=
ere.</div><div><br></div><div>But, at a low level, you must have the &quot;=
startup&quot; value set to &quot;automatic&quot; for targets to be disconne=
cted automatically at shutdown time. So you should be able to run:</div><di=
v><br></div><div>&gt; zsh&gt; sudo iscsiadm -m node --op show | fgrep start=
up</div><div><br></div><div>to see the startup value.<br></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/1cf29039-73ae-46df-8e0e-76c8f17fed15%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/1cf29039-73ae-46df-8e0e-76c8f17fed15%40googlegroups.com</a>.<b=
r />

------=_Part_5757_408016507.1576174866715--

------=_Part_5756_591835356.1576174866715--
